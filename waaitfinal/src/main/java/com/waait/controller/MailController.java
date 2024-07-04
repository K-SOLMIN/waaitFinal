package com.waait.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.waait.dto.Employee;
import com.waait.dto.Mail;
import com.waait.dto.MailSetting;
import com.waait.dto.SpamDomain;
import com.waait.mypage.model.service.MailService;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
@RequestMapping("/mail")
public class MailController {
	
	private final MailService service;
	
	@GetMapping("/mailmain.do")
	public void changeMailView(Model model,
								@RequestParam(defaultValue = "1") int cPage) {
//		SecurityContextImpl security = (SecurityContextImpl) session.getAttribute("SPRING_SECURITY_CONTEXT");
//		System.out.println("권한 : " + security.getAuthentication().getAuthorities());
//		Employee employee = (Employee) security.getAuthentication().getPrincipal();
//		System.out.println("employee security : " + employee);
		
		Employee employee = getLoginEmpInfo();
		String mailReceiverAddress = employee.getEmpEmail();
		long empNo = employee.getEmpNo();
		int numPerpage = 0;
		
		List<SpamDomain> spamDomains = service.getSpamDomain(empNo);
		List<MailSetting> mailSetting = service.getMailSetting(empNo);
		if(mailSetting.size() == 0) {
			service.setMailSetting(empNo);
			numPerpage = 5;
		} else {
			numPerpage = mailSetting.get(0).getMailNumPerpage();		
		}
		Map<String, Object> mailSettings = Map.of("cPage", cPage, "numPerpage", numPerpage,
													"spamDomains", spamDomains, "mailReceiverAddress", mailReceiverAddress);
		
		List<Mail> mailList = service.getReceiveMail(mailSettings);
		System.out.println("가져온 mailList : " + mailList);
		
		int totalData = mailList.size();
		int totalPage = (int) Math.ceil((double) totalData/ numPerpage);
		int pageBarSize = 5;
		int pageNo = ((cPage - 1) / pageBarSize) * pageBarSize + 1;
		int pageEnd = pageNo + pageBarSize - 1;
		String url = "mailmain.do";
		
		StringBuffer sb = new StringBuffer();
		sb.append("<ul class='pagination justify-content-center pagination-sm'>");
		if(pageNo == 1) {
			sb.append("<li class='page-item disabled'>");
			sb.append("<a class='page-link' href='#'>이전</a>");
			sb.append("</li>");
		} else {
			sb.append("<li class='page-item'>");
			sb.append("<a class='page-link' href='javascript:fn_paging(" + (pageNo - 1) + ")'>이전</a>");
			sb.append("</li>");
		}
		
		while(!(pageNo > pageEnd || pageNo > totalPage)) {
			if(pageNo == cPage) {
				sb.append("<li class='page-item disabled'>");
				sb.append("<a class='page-link' href='#'>" + pageNo + "</a>");
				sb.append("</li>");
			} else {
				sb.append("<li class='page-item'>");
				sb.append("<a class='page-link' href='javascript:fn_paging(" + pageNo + ")'>" + pageNo + "</a>");
				sb.append("</li>");
			}
			pageNo++;
		}
		
		if(pageNo > totalPage) {
			sb.append("<li class='page-item disabled'>");
			sb.append("<a class='page-link' href='#'>다음</a>");
			sb.append("</li>");
		} else {
			sb.append("<li class='page-item'>");
			sb.append("<a class='page-link' href='javascript:fn_paging(" + pageNo + ")'>다음</a>");
			sb.append("</li>");
		}
		sb.append("</ul>");
		
		sb.append("<script>");
		sb.append("function fn_paging(pageNo) {");
		sb.append("location.assign('" + url + "?cPage='+pageNo+'&numPerpage=" + numPerpage + "')");
		sb.append("}");
		sb.append("</script>");
		
		model.addAttribute("mails", mailList);
		model.addAttribute("pageBar", sb.toString());
	}
	
	@PostMapping("/settingspamdomain.do")
	@ResponseBody
	public void settingSpamDomain(String spamDomain) {
		System.out.println("spamDomain : " + spamDomain);
		Map<String, Object> param = new HashMap<String, Object>();
		long empNo = getLoginEmpInfo().getEmpNo();
//		String loginMemberEmailDomain = getLoginEmpInfo().getEmpEmail();
		
		String[] domainArr = spamDomain.split(",");
		for(String domain : domainArr) {
			param.put("empNo", empNo);
			param.put("domain", domain);
			service.insertSpamDomain(param);
		}
		
//		List<Mail> mailList = service.getAllMail(loginMemberEmailDomain);
//		if(mailList != null && mailList.size() > 0 && !mailList.isEmpty()) {
//			for(Mail m : mailList) {
//				String senderMailAddress = m.getSenderMailAddress();
//				for(String spamEmailAddress : domainArr) {
//					if(senderMailAddress.equals(spamEmailAddress)) {
//						service.insertSpamMailBox();
//					}
//				}
//			}
//		} 야발
	}
	
	@GetMapping("/joinspammail.do")
	public String joinSpamMail(Model model) {
		List<Mail> spamMailList = new ArrayList<Mail>();
		String loginMemberEmailDomain = getLoginEmpInfo().getEmpEmail();
		long empNo = getLoginEmpInfo().getEmpNo();
		
		List<SpamDomain> spamDomains = service.getSpamDomain(empNo);
		
//		StringBuffer sb = new StringBuffer();
		Map<String, Object> param = Map.of("loginMemberEmailDomain", loginMemberEmailDomain, "spamDomains", spamDomains);
		if(spamDomains != null && spamDomains.size() > 0 && !spamDomains.isEmpty()) {
//			for(SpamDomain domain : spamDomains) {
//				sb.append(domain.getSpamDomainAddress() + ",");
//			}
			spamMailList = service.getSpamMail(param);
		}
//		String[] spamDomainArr = sb.toString().split(",");
//		Arrays.stream(spamDomainArr).forEach(e -> {
//			System.out.println("spamDomain : " + e);
//		});
		
		model.addAttribute("spamMail", spamMailList);
		return "mail/mailresponse/spammail";
	}
	
	@GetMapping("/enrollmymailbox.do")
	@ResponseBody
	public void enrollUserMailBox(String wantBoxName) {
		
	}
	
	private Employee getLoginEmpInfo() {
		return (Employee) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	}
}
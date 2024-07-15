package com.waait.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import org.springframework.web.multipart.MultipartFile;

import com.waait.dto.Employee;
import com.waait.dto.Mail;
import com.waait.dto.MailFile;
import com.waait.dto.MailSetting;
import com.waait.dto.MyMailBox;
import com.waait.dto.RecentSearch;
import com.waait.dto.SpamDomain;
import com.waait.service.MailService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
@RequestMapping("/mail")
public class MailController {
	
	private final MailService service;
//	private final ObjectMapper mapper;
	
	@GetMapping("/mailmain.do")
	public String changeMailView(Model model,
								@RequestParam(defaultValue = "1") int cPage) {
		Employee employee = getLoginEmpInfo();
		String mailReceiverAddress = employee.getEmpEmail();
		long empNo = employee.getEmpNo();
		int numPerpage = 0;
		
		List<SpamDomain> spamDomains = service.getSpamDomain(empNo);
		List<MailSetting> mailSetting = service.getMailSetting(empNo);
		List<MyMailBox> myMailBoxList = service.getMyMailBox(empNo);
		
		if(mailSetting.size() == 0) {
			service.setMailSetting(empNo);
			numPerpage = 5;
		} else {
			numPerpage = mailSetting.get(0).getMailNumPerpage();
		}
		
//		numPerpage = 10; //지워야 됨
		Map<String, Object> mailSettings = Map.of("cPage", cPage, "numPerpage", numPerpage,
													"spamDomains", spamDomains, "mailReceiverAddress", mailReceiverAddress);
		
		List<Mail> mailList = service.getReceiveMail(mailSettings);
		
//		List<MyMailBoxDetail> myMailBoxList = service.getMyMailBox(empNo);
		
		System.out.println("가져온 mailList : " + mailList);
		
		int totalData = service.getTotalData(mailSettings);
		System.out.println("totalData : " + totalData);
		int totalPage = (int) Math.ceil((double) totalData/ numPerpage);
		int pageBarSize = 5;
		int pageNo = ((cPage - 1) / pageBarSize) * pageBarSize + 1;
		int pageEnd = pageNo + pageBarSize - 1;
		String url = "mailmain.do";
		
		StringBuffer sb = new StringBuffer();
		sb.append("<ul class='pagination justify-content-center pagination-sm' style='margin-top : 50px;'>");
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
		model.addAttribute("myMailBoxes", myMailBoxList);
		model.addAttribute("pageBar", sb.toString());
		
		return "mail/mailmain";
	}
	
	@PostMapping("/settingspamdomain.do")
	public @ResponseBody String settingSpamDomain(String spamDomain) {
		int result = 0;
		System.out.println("spamDomain : " + spamDomain);
		Map<String, Object> param = new HashMap<String, Object>();
		long empNo = getLoginEmpInfo().getEmpNo();
		
		String[] domainArr = spamDomain.split(",");
		for(String domain : domainArr) {
			param.put("empNo", empNo);
			param.put("domain", domain);
			result = service.insertSpamDomain(param);
		}
		
		if(result > 0) return "성공적으로 등록되었습니다.";
		else return "등록에 실패했습니다.";
	}
	
	@GetMapping("/joinspammail.do")
	public String joinSpamMail(Model model) {
		List<Mail> spamMailList = new ArrayList<Mail>();
		String loginMemberEmailDomain = getLoginEmpInfo().getEmpEmail();
		long empNo = getLoginEmpInfo().getEmpNo();
		
		List<SpamDomain> spamDomains = service.getSpamDomain(empNo);
		
		Map<String, Object> param = Map.of("loginMemberEmailDomain", loginMemberEmailDomain, "spamDomains", spamDomains);
		if(spamDomains != null && spamDomains.size() > 0 && !spamDomains.isEmpty()) {
			spamMailList = service.getSpamMail(param);
		}
		
		model.addAttribute("spamMail", spamMailList);
		return "mail/mailresponse/spammail";
	}
	
	@GetMapping("/enrollmymailbox.do")
	public @ResponseBody Map<String, Object> enrollUserMailBox(String wantBoxName, HttpServletResponse res) {
		long empNo = getLoginEmpInfo().getEmpNo();
		List<MyMailBox> boxList = service.getMyMailBox(empNo);
		
		for(MyMailBox mailBox : boxList) {
			if(mailBox.getMyMailBoxName().equals(wantBoxName)) {
				return Map.of("errorMsg", "중복되는 이름은 사용 할 수 없습니다.");
			}
		}
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("empNo", empNo);
		param.put("wantBoxName", wantBoxName);
		
		int myMailBoxNo = service.enrollUserMailBox(param);
		Map<String, Object> newMyMailBoxInfo = Map.of("myBoxName", wantBoxName, "myMailBoxNo", myMailBoxNo);
		return newMyMailBoxInfo;
		
	}
	
	@PostMapping("/deletespamdomain.do")
	public @ResponseBody int deleteSpamDomain(String domainAddresses) {
		System.out.println("domainAddress : " + domainAddresses);
		long empNo = getLoginEmpInfo().getEmpNo();
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("empNo", empNo);
		param.put("domainAddresses", domainAddresses);
		service.deleteSpamDomain(param);
		return 0;
	}
	
	@GetMapping("/maildetail.do")
	public String mailDetailView(Model model, int mailNo) {
		String userMailAddress = getLoginEmpInfo().getEmpEmail();
		Map<String, Object> param = Map.of("mailNo", mailNo, "userMailAddress", userMailAddress);
		
		Mail mail = service.getMailDetailByNo(param);
		updateReadStatus(mailNo);
		model.addAttribute("mail", mail);
		model.addAttribute("empMailAddress", userMailAddress);
		return "mail/maildetail";
	}
	
	@GetMapping("/addfavorite.do")
	public @ResponseBody int addFavoriteMail(String mailNo) {
		return service.addFavoriteMail(mailNo);
	}
	
	@GetMapping("/canceladdfavorite.do")
	public @ResponseBody int cancelAddFavorite(String mailNo) {
		return service.cancelAddFavorite(mailNo);
	}
	
	@GetMapping("/writemail.do")
	public void changeWriteMailView(Model model, 
			@RequestParam(defaultValue = "-1") int mailNo) {
		String name = getLoginEmpInfo().getEmpName();
		String writerEmailAddress = getLoginEmpInfo().getEmpEmail();
		
		model.addAttribute("writerName", name);
		model.addAttribute("writerMailAddress", writerEmailAddress);
		
		if(mailNo != -1) {
			Mail temporaryWriteMail = service.joinTempoSaveMailByMailNo(mailNo);
			model.addAttribute("temporaryWriteMail", temporaryWriteMail);
			System.out.println("temporaryWriteMail확인 : " + temporaryWriteMail);
		}

	}
	
	@PostMapping("/sendmail.do")
	public String sendMail(MultipartFile[] upFile, HttpSession session, String mailContent, String mailTitle, String mailReceiver, String mailStatus) {
		long writerNo = getLoginEmpInfo().getEmpNo();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("mailContent", mailContent);
		param.put("mailTitle", mailTitle);
		param.put("mailReceiverAddress", mailReceiver);
		param.put("mailStatus", mailStatus);
		param.put("writerNo", writerNo);
		System.out.println("mailConetnt : " + mailContent + " mailTitle : " + mailTitle + " mailReceiverAddress : " + mailReceiver);
		int mailSequence = service.sendMail(param);
		
		String path = session.getServletContext().getRealPath("resources/upload/mail");
		if (upFile != null) {
			System.out.println("upFile은 null 이 아님");
			for (MultipartFile file : upFile) {
				System.out.println("fileName : " + file.getOriginalFilename());
				if (!file.isEmpty()) {
					String oriName = file.getOriginalFilename();
					String ext = oriName.substring(oriName.lastIndexOf("."));
					Date today = new Date(System.currentTimeMillis());
					int randomVal = (int) (Math.random() * 100000) + 1;
					String rename = "waait" + (new SimpleDateFormat("yyyyMMdd_HHmmssSSS").format(today)) + "_"
							+ randomVal + ext;
					long fileSize = file.getSize();
					File dir = new File(path);
					if (!dir.exists()) dir.mkdirs();
					
					MailFile mailFile = MailFile.builder()
												.mailNo(mailSequence)
												.mailOriginalFileName(oriName)
												.mailRenamedFileName(rename)
												.mailFileSize(fileSize)
												.build();
					
					try {
						int result = service.updateFile(mailFile);
						if(result < 0) throw new RuntimeException();
					} catch(Exception e) {
						e.printStackTrace();
					}
					
					try {
						file.transferTo(new File(path, rename));
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}

		}
		return "redirect:/mail/mailmain.do";
	}
	
	@PostMapping("/addmailmymailbox.do")
	public @ResponseBody int addMailMyMailBox(String mailNoStr, String myMailBoxNo) {
		Map<String, Object> param = new HashMap<String, Object>();
		System.out.println("mailNoStr : " + mailNoStr + " myMailBoxNo : " + myMailBoxNo);
		param.put("mailNoStr", mailNoStr);
		param.put("myMailBoxNo", myMailBoxNo);
		
		return service.addMailMyMailBox(param);
	}
	
	@GetMapping("/detailmymailbox.do")
	public void myMailBoxDetailView(int myMailBoxNo, Model model) {

		List<Mail> mailList = service.joinMyMailBoxDetail(myMailBoxNo);
		System.out.println("myMailBoxMailList : " + mailList);
		model.addAttribute("mails", mailList);
	}
	
	@GetMapping("/myfavoritemailbox.do")
	public void joinFavoriteMailBox(Model model) {
		String loginMemberEmailDomain = getLoginEmpInfo().getEmpEmail();
		List<Mail> mailList = service.joinFavoriteMailBox(loginMemberEmailDomain);
		System.out.println("favoriteList : " + mailList);
		model.addAttribute("mails", mailList);
	}
	
	@GetMapping("/temporarysavemailbox.do")
	public String joinTempoSaveMailBox(Model model) {
		long empNo = getLoginEmpInfo().getEmpNo();
		List<Mail> temporarySaveMailList = service.joinTempoSaveMailBox(empNo);
		System.out.println("temporarySaveMailList : " + temporarySaveMailList);
		model.addAttribute("mails", temporarySaveMailList);
		
		return "mail/mailresponse/mail_list_response";
	}
	
	@PostMapping("/deletemail.do")
	public String deleteMail(String mailNoStr, Model model) {
		int result = service.deleteMail(mailNoStr);
		Employee employee = getLoginEmpInfo();
		String mailReceiverAddress = employee.getEmpEmail();
		long empNo = employee.getEmpNo();
		int numPerpage = 0;
		
		List<SpamDomain> spamDomains = service.getSpamDomain(empNo);
		List<MailSetting> mailSetting = service.getMailSetting(empNo);
		List<MyMailBox> myMailBoxList = service.getMyMailBox(empNo);
		
		if(mailSetting.size() == 0) {
			service.setMailSetting(empNo);
			numPerpage = 5;
		} else {
			numPerpage = mailSetting.get(0).getMailNumPerpage();
		}
		
		int cPage = 1;
		Map<String, Object> mailSettings = Map.of("cPage", cPage, "numPerpage", numPerpage,
													"spamDomains", spamDomains, "mailReceiverAddress", mailReceiverAddress);
		
		List<Mail> mailList = service.getReceiveMail(mailSettings);
		model.addAttribute("mails", mailList);
		return "mail/mailresponse/mail_list_response";
	}
	
	@PostMapping("/deletemymailbox.do")
	public @ResponseBody int deleteMyMailBox(int myMailBoxNo) {
		List<Mail> mailInMyMailBox = service.joinMyMailBoxDetail(myMailBoxNo);
		
		service.moveMailToTrashMailBox(mailInMyMailBox);
		
		service.deleteMyMailBox(myMailBoxNo);
		return 0;
	}
	
	@GetMapping("/jointrashmailbox.do")
	public String jointrashmailbox(Model model) {
		String receiverMailAddress = getLoginEmpInfo().getEmpEmail();
		List<Mail> trashMailList = service.jointrashmailbox(receiverMailAddress);
		System.out.println("trashMailList : " + trashMailList);
		model.addAttribute("mails", trashMailList);
		return "mail/trashmailbox";
	}
	
	@PostMapping("/perfectlydeletemail.do")
	public String perfectlyDeleteMail(String mailNoStr) {
		service.perfectlyDeleteMail(mailNoStr);
		return "redirect:/mail/jointrashmailbox.do";
	}
	
	@GetMapping("/joinsendingmailbox.do")
	public String joinSendingMailBox(Model model) {
		long empNo = getLoginEmpInfo().getEmpNo();
		List<Mail> sendingMailList = service.joinSendingMailBox(empNo);
		System.out.println("sendingMailList : " + sendingMailList);
		model.addAttribute("mails", sendingMailList);
		return "mail/mailresponse/mail_list_response";
	}
	
	@PostMapping("/searchmail.do")
	public String searchMail(String searchType, String searchValue, Model model) {
		String receiverMailAddress = getLoginEmpInfo().getEmpEmail();
		long empNo = getLoginEmpInfo().getEmpNo();
		
		Map<String, String> searchParam = Map.of("searchType", searchType, "searchValue", searchValue, "receiverMailAddress", receiverMailAddress);
		List<Mail> searchList = service.searchMail(searchParam);
		model.addAttribute("searchMail", searchList);
		
		RecentSearch recentSearch = RecentSearch.builder()
												.empNo(empNo)
												.searchType(searchType)
												.searchValue(searchValue)
												.build();
		service.enrollRecentSearchKeyword(recentSearch);
		
		return "mail/mailresponse/searchmail";
	}
	
	@GetMapping("/filedownload.do")
	public void fileDownload(HttpServletResponse response, HttpSession session, 
			String mailRenamedFileName,	String mailOriginalFileName) {
		String filePath = session.getServletContext().getRealPath("/resources/upload/mail/");
		File downloadFile = new File(filePath + mailRenamedFileName);
		try(FileInputStream fis = new FileInputStream(downloadFile);
				BufferedInputStream bis = new BufferedInputStream(fis);
					BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream())){
			String encoding = new String(mailOriginalFileName.getBytes("UTF-8"), "ISO-8859-1");
			System.out.println("encoding : " + encoding);
			response.setContentType("application/octet-stream;charset=UTF-8");
			response.setHeader("Content-disposition", "attachment;filename=\"" + encoding + "\"");
			int data = 1;
			while((data = bis.read()) != -1) {
				bos.write(data);
			}
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	//test
	@GetMapping("/testuploadfile.do")
	public String testUploadFileView() {
		return "mail/fileuploadtest";
	}
	
	@PostMapping("/testmultipartfile.do")
	public void testUploadFile(MultipartFile[] upFile) {
		if(upFile != null) {
			for(MultipartFile file : upFile) {
				System.out.println("oriName : " + file.getOriginalFilename());
			}
		}
	}
	
	private Employee getLoginEmpInfo() {
		return (Employee) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	}
	
	private void updateReadStatus(int mailNo) {
		service.updateReadStatus(mailNo);
	}
}

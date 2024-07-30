package com.waait.service;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;

@PropertySource("classpath:application.properties")
@RequiredArgsConstructor
@Service
public class EmailService {
	
	private final JavaMailSender javaMailSender;
	
	@Value("${spring.mail.username}")
	private String id;
	
	public void sendInitialIdAndPwd(String receiver, String userId, String randomPwd) 
									throws MessagingException, UnsupportedEncodingException {
		MimeMessage message = javaMailSender.createMimeMessage();
		
		message.addRecipients(MimeMessage.RecipientType.TO, receiver);
		message.setSubject("초기 아이디 비밀번호");
		
		StringBuilder sb = new StringBuilder();
		sb.append("<h1>아이디와 초기 비밀번호 입니다.</h1>");
		sb.append("<p>아이디 : " + userId + "</p>");
		sb.append("<p>비밀번호 : " + randomPwd + "</p>");
		String msg = sb.toString();
		
		message.setText(msg, "utf-8", "html");
		message.setFrom(new InternetAddress(id, "empManageDept"));
		
		javaMailSender.send(message);
	}
	

}

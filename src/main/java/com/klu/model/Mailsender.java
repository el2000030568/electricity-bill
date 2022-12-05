package com.klu.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class Mailsender {
	
	@Autowired
	private JavaMailSender mailSender;
	
	public void sendEmail(String toEmail,String Subject,String body) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("ebssystemoffical@gmail.com");
		message.setTo(toEmail);
		message.setText(body);
		message.setSubject(Subject);
		
		mailSender.send(message);
		
		System.out.println("Message sent succesfull");
	}

}

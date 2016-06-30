package com.websystique.springmvc;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class SendSimpleMail {

	@Autowired
	private JavaMailSenderImpl javaMailImpl;

	public void Mail(int userid, String pass, String toMail) throws MessagingException {

		MimeMessage mimeMessage = javaMailImpl.createMimeMessage();
		MimeMessageHelper mailMsg = new MimeMessageHelper(mimeMessage);
		mailMsg.setFrom("ishutest90@gmail.com");
		mailMsg.setTo(toMail);
		mailMsg.setSubject("Patient Registration Email");
		mailMsg.setText("You are Registered! Login details - User id: " + userid + " Password: " + pass);
		javaMailImpl.send(mimeMessage);
		System.out.println("---Mail Done---");

	}

}

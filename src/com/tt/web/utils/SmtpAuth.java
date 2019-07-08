package com.tt.web.utils;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SmtpAuth extends Authenticator {
	
	private String userName;
	private String password;
	
	public SmtpAuth(String userName,String password){
		
		this.userName=userName;
		this.password=password;
	}
	
	protected PasswordAuthentication getPasswordAuthentication(){
		
		return new PasswordAuthentication(userName, password);
	}

}

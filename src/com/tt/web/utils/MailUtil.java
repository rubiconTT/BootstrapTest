package com.tt.web.utils;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.tt.web.entity.Mail;

public class MailUtil {

	protected final Logger logger=Logger.getLogger(MailUtil.class);
	
	public  boolean sendMail(Mail mail){
		
		HtmlEmail email=new HtmlEmail();
		logger.warn("mail app would be tested");
		try{
			File file=new File("E:\\logs\\log.log");
			File file2=new File("E:\\logs\\error.log");
			
			email.attach(file);
			email.attach(file2);
			email.setHostName(mail.getHost());
			email.setCharset(Mail.ENCODING);
			for(int i=0;i<mail.getReceiverList().size();i++){
				email.addTo(mail.getReceiverList().get(i));
			}
			email.setFrom(mail.getSender(), mail.getNickName());
			email.setAuthentication(mail.getUsername(), mail.getPassword());
			email.setSubject(mail.getSubject());
			email.setMsg(mail.getMailBodyContent());
			
			email.send();
			
			if(logger.isDebugEnabled()){
				logger.debug(mail.getSender()+"发送邮件到："+mail.getReceiver()+"发送成功!");
			}
			
			return true;
		}catch(EmailException e){
			e.printStackTrace();
			logger.debug(mail.getSender()+"发送邮件到："+mail.getReceiver()+"发送失败!");
			return false;
		}
	}
	
	
	public static void main(String[] args) {
		
		List<String > receiverList=new ArrayList<String>();
		PropertyConfigurator.configure("D:\\WORKSPACE-tangjiangtao\\ActivitiWorkspace\\BootstrapTest\\src\\log4j.properties");
		
		Mail mail=new Mail();
		String receiver_1="aytjt2006@126.com";
		String receiver_2="tangjt@dogesoft.cn";
		receiverList.add(receiver_1);
		receiverList.add(receiver_2);
		
		mail.setHost("smtp.163.com");
		mail.setMailBodyContent("测试使用java来发送邮件");
		mail.setNickName("tt");
		mail.setPassword("153302tjt");
		
		mail.setSender("fqlx-2015@163.com");
		mail.setSubject("this is a test email");
		mail.setUsername("fqlx-2015@163.com");
		
		mail.setReceiverList(receiverList);
		
		boolean result=new MailUtil().sendMail(mail);
		System.out.println(result);

	}

}

package com.tt.web.config;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;

/**
 * 邮件配置文件处理类
 * @author karl
 *
 */
public class ConfigLoader {
	
	private static Logger logger = Logger.getLogger(ConfigLoader.class);//日志
	private static String mailConfigPath = "mailConfig.properties";//邮件配置
	private static String server;//发件服务器
	private static String sender;//发件人
	private static String username;//发件人邮箱地址
	private static String nickname;//发件 人昵称
	private static String password;//发件人邮箱密码
	private static String port;//发件服务器端口号
	private static String auth;//访问发件服务器是否需要权限
	private static String protocol;//邮件服务协议
	private static String templatePath;

	static {

		InputStream ins = ConfigLoader.class.getClassLoader()
				.getResourceAsStream(mailConfigPath);
		
		Properties props=new Properties();
		
		try {
			props.load(ins);
		} catch (IOException e) {
			logger.error("load mail settings error,please check the path:"+mailConfigPath);
			logger.error(e.toString(), e);
			
		}
		server=props.getProperty("MAIL.SMTP.SERVER");
		sender=props.getProperty("MAIL.SMTP.SENDER");
		username=props.getProperty("MAIL.SMTP.USERNAME");
		nickname=props.getProperty("MAIL.SMTP.NICKNAME");
		password=props.getProperty("MAIL.SMTP.PASSWORD");
		port=props.getProperty("MAIL.SMTP.PORT");
		auth=props.getProperty("MAIL.SMTP.AUTH");
		protocol=props.getProperty("MAIL.TRANSPORT.PROTOCOL");
		templatePath=props.getProperty("MAIL.TEMPLATE.PATH");
		
	}

	public static String getServer() {
		return server;
	}

	public static String getSender() {
		return sender;
	}

	public static String getUsername() {
		return username;
	}

	public static String getNickname() {
		return nickname;
	}

	public static String getPassword() {
		return password;
	}

	public static String getPort() {
		return port;
	}

	public static String getAuth() {
		return auth;
	}

	public static String getProtocol() {
		return protocol;
	}
	
	public static String getTemplatePath() {
		return templatePath;
	}

	public static void setMailConfigPath(String mailConfigPath) {
		ConfigLoader.mailConfigPath = mailConfigPath;
	}

}

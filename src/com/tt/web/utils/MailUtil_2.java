package com.tt.web.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import com.tt.web.config.ConfigLoader;
import com.tt.web.entity.MailSender;

public class MailUtil_2 {
	
	protected static Logger logger=Logger.getLogger(MailUtil_2.class);
	
	public static void main(String[] args) {
		
		String receiver1 = "aytjt2006@126.com";
		String receiver2 = "fqlx-2015123163.com";
		String receiver3 = "aytj13535.com";
		String receiver4 = "fqlx-2015@163.com";

		List<String> receiverList = new ArrayList<String>();
		receiverList.add(receiver1);
		receiverList.add(receiver2);
		receiverList.add(receiver3);
		receiverList.add(receiver4);

		String subject = "极强的兼容性，支持OWL、VCL和MFC三大类库--c++ builder";
		String mailContent = "c++ Builder是由Borland公司推出的一款可视化集成开发工具"
				+ "。C++ Builder具有快速的可视化开发环境："
				+ "只要简单地把控件（Component）拖到窗体（Form）上，定义一下它的属性，设置一下它的外观，"
				+ "就可以快速地建立应用程序界面；C++ Builder内置了100多个完全封装了Windows公用特性且具有完全可扩展性（包括全面支持ActiveX控件）的可重用控件；"
				+ "C++ Builder具有一个专业C++开发环境所能提供的全部功能：快速、高效、灵活的编译器优化，逐步连接，CPU透视，命令行工具等。"
				+ "它实现了可视化的编程环境和功能强大的编程语言（C++）的完美结合。";

//		 MailUtil_2.sendMail(receiverList, subject, mailContent);
		
        
		Map<String, String> mailBodyMap = new HashMap<String, String>();
		mailBodyMap.put("mailContent", mailContent);
		mailBodyMap.put("userName", "rubicon");
		mailBodyMap.put("company", "Shanghai security exchange");
		mailBodyMap.put("telephone", "021-11101385");
		mailBodyMap.put("fax", "021-60130101");
		mailBodyMap.put("senderName", "Alasika");
		mailBodyMap.put("address", "浦东新区陆家嘴环路");

		String templateName = "mailTemplate_03.ftl";

//		MailUtil_2.sendMailByTemplate(receiverList, subject, mailBodyMap,templateName);

		String filepath1 = "D:\\WORKSPACE-tangjiangtao\\各类账号和密码.txt";
		String filepath2 = "D:\\WORKSPACE-tangjiangtao\\akki测试案例start.doc";
		String filepath3 = "D:\\WORKSPACE-tangjiangtao\\测试公告附件7.pdf";
		String filepath4 = "D:\\WORKSPACE-tangjiangtao\\PortableGit安装介绍.docx";

		List<String> filepathList = new ArrayList<String>();
		filepathList.add(filepath1);
		filepathList.add(filepath2);
		filepathList.add(filepath3);
		filepathList.add(filepath4);

		// String
		// attachFilePath="D:\\WORKSPACE-tangjiangtao\\各类账号和密码.txt,D:\\WORKSPACE-tangjiangtao\\akki测试案例start.doc";

//        MailUtil_2.sendMailWithAttachment(receiverList, subject, filepathList,mailContent);
				
		MailUtil_2.sendMailWithAttachByTemplate(receiverList, subject, filepathList, mailBodyMap, templateName);
	}
	
	/**
	 * 按普通方式发送不带附件的邮件
	 * 
	 * @param receiver
	 *            收件人
	 * @param subject
	 *            主题
	 * @param mailContent
	 *            邮件内容
	 */
	public static void sendMail(List<String> receiverList, String subject,
			String mailContent) {

		setMailBasicInfo(receiverList, subject, null, mailContent, null, null);

	}
	
	/**
	 * 按普通方式发送带有附件的邮件
	 * 
	 * @param receiver
	 *            收件人
	 * @param subject
	 *            主题
	 * @param attachFilePath
	 *            附件名称
	 * @param mailContent
	 *            邮件内容
	 */
	public static void sendMailWithAttachment(List<String> receiverList,
			String subject, List<String> attachFilePathList, String mailContent) {

		setMailBasicInfo(receiverList, subject, attachFilePathList,
				mailContent, null, null);

	}
	
	/**
	 * 根据邮件内容模板发送不带附件的邮件
	 * 
	 * @param receiver
	 *            收件人
	 * @param subject
	 *            主题
	 * @param mailBodyMap
	 *            模板中的内容
	 * @param templateName
	 *            模板名称
	 */
	public static void sendMailByTemplate(List<String> receiverList,
			String subject, Map<String, String> mailBodyMap, String templateName) {

		setMailBasicInfo(receiverList, subject, null, null, mailBodyMap,
				templateName);

	}
	
	/**
	 * 根据邮件内容模板，发送带附件的邮件
	 * 
	 * @param receiver
	 *            收件人
	 * @param subject
	 *            主题
	 * @param attachFilePath
	 *            附件路径名
	 * @param mailBodyMap
	 *            模板内容
	 * @param templateName
	 *            模板名称
	 */
	public static void sendMailWithAttachByTemplate(List<String> receiverList,
			String subject, List<String> attachFilePathList,
			Map<String, String> mailBodyMap, String templateName) {

		setMailBasicInfo(receiverList, subject, attachFilePathList, null,
				mailBodyMap, templateName);
		

	}
	
	/**
	 * 设置邮件发送所需要各部份信息
	 * 
	 * @param receiverList
	 *            收件人列表
	 * @param subject
	 *            主题
	 * @param attachFilePathList
	 *            附件列表
	 * @param mailContent
	 *            邮件内容
	 * @param mailBodyMap
	 *            模板体内容
	 * @param templateName
	 *            模板名称
	 */
	private static void setMailBasicInfo(List<String> receiverList,
			String subject, List<String> attachFilePathList,
			String mailBodyContent, Map<String, String> mailBodyMap,
			String templateName) {

		String server = ConfigLoader.getServer();
		String protocol=ConfigLoader.getProtocol();
		String port=ConfigLoader.getPort();
		String sender = ConfigLoader.getSender();
		String username = ConfigLoader.getUsername();
		String password = ConfigLoader.getPassword();
		String nickname = ConfigLoader.getNickname();
		String mailBody = null;

		if (templateName == null ||templateName.isEmpty() || mailBodyMap == null||mailBodyMap.isEmpty()) {
			mailBody = mailBodyContent;

		}
		if ( mailBodyContent==null||mailBodyContent.length()==0) {
			mailBody = FreemarkerUtil.generateHtmlFromFtl(templateName,
					mailBodyMap);

			FreemarkerUtil.outputToConsole(templateName, mailBodyMap);
		}

		MailSender mailSender = new MailSender(server,protocol,port, username, password);
		mailSender.setNeedSmtpAuth(true);

		mailSender.setSenderNameAndPswd(username,password);
		mailSender.setSender(sender,nickname);
		boolean result = mailSender.setReceiver(receiverList);

		mailSender.setMailSubject(subject);
		mailSender.setMailBody(mailBody);

		mailSender.addAttachment(attachFilePathList);

		if (result) {

			mailSender.sendMail();
		} else {
			logger.error("收件人地址列表为空，无法发送邮件，请检查收件人地址!");
		}

	}

}

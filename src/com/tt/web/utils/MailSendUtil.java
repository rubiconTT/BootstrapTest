package com.tt.web.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.tt.web.config.ConfigLoader;
import com.tt.web.entity.Mail;
import com.tt.web.entity.MailSender;

/**
 * 邮件发送工具类
 * 
 * @author karl
 *
 */
public class MailSendUtil {

	private static Logger logger = Logger.getLogger(MailSendUtil.class);

	public static void main(String[] args) {

		String receiver1 = "aytjt2006@126.com";
		String receiver2 = "fqlx-2015123163.com";
		String receiver3 = "tangjt@dogesoft.cn";
		String receiver4 = "fqlx-2015@163.com";

		List<String> receiverList = new ArrayList<String>();
		receiverList.add(receiver1);
		receiverList.add(receiver2);
		receiverList.add(receiver3);
//		receiverList.add(receiver4);
	
		List<String> copyToList=new ArrayList<String>();
		copyToList.add(receiver2);
		copyToList.add(receiver3);
		
		List<String> bccList=new ArrayList<String>();
		bccList.add(receiver4);

		String subject = "极强的兼容性，支持OWL、VCL和MFC三大类库--c++ builder";
		String mailContent = "c++ Builder是由Borland公司推出的一款可视化集成开发工具"
				+ "它实现了可视化的编程环境和功能强大的编程语言（C++）的完美结合。";

		Mail mail = new Mail();
		mail.setHost(ConfigLoader.getServer());
		mail.setProtocol(ConfigLoader.getProtocol());
		mail.setPort(ConfigLoader.getPort());
		mail.setUsername(ConfigLoader.getUsername());
		mail.setPassword(ConfigLoader.getPassword());
		mail.setNickName("");
//		 mail.setNickName(ConfigLoader.getNickname());
		mail.setSender(ConfigLoader.getSender());
		// mail.setSender("women1111");
		mail.setReceiverList(receiverList);
		mail.setSubject(subject);
		mail.setMailBodyContent(mailContent);
		mail.setCopyToList(copyToList);
//		mail.setCopyToList(null);
		mail.setBccList(bccList);

		 MailSendUtil.sendMail(mail);

		Map<String, String> mailBodyMap = new HashMap<String, String>();
		mailBodyMap.put("mailContent", mailContent);
		mailBodyMap.put("userName", "rubicon");
		mailBodyMap.put("company", "Shanghai security exchange");
		mailBodyMap.put("telephone", "021-11101385");
		mailBodyMap.put("fax", "021-60130101");
		mailBodyMap.put("senderName", "Alasika");
		mailBodyMap.put("address", "浦东新区陆家嘴环路");

		String templateName = "mailTemplate_03.ftl";

//		 MailSendUtil.sendMailByTemplate(mail, mailBodyMap,templateName);

		String filepath1 = "D:\\WORKSPACE-tangjiangtao\\各类账号和密码.txt";
		String filepath2 = "D:\\WORKSPACE-tangjiangtao\\akki测试案例start.doc";
		String filepath3 = "D:\\WORKSPACE-tangjiangtao\\测试公告附件7.pdf";
		String filepath4 = "D:\\WORKSPACE-tangjiangtao\\PortableGit安装介绍.docx";

		List<String> filepathList = new ArrayList<String>();
		filepathList.add(filepath1);
		filepathList.add(filepath2);
		filepathList.add(filepath3);
		filepathList.add(filepath4);
//		 MailSendUtil.sendMailWithAttachment(mail, filepathList);

//		MailSendUtil.sendMailWithAttachByTemplate(mail, filepathList,
//				mailBodyMap, templateName);
	}

	/**
	 * 按照普通方式发送不带附件的邮件
	 * 
	 * @param mail
	 */
	public static void sendMail(Mail mail) {

		setMailBasicInfo(mail, null, null, null);
	}

	/**
	 * 按照普通方式发送带有附件的邮件
	 * 
	 * @param mail
	 * @param attachFilePathList
	 */
	public static void sendMailWithAttachment(Mail mail,
			List<String> attachFilePathList) {
		setMailBasicInfo(mail, attachFilePathList, null, null);
	}

	/**
	 * 使用模板发送不带附件的邮件
	 * 
	 * @param mail
	 * @param mailBodyMap
	 * @param templateName
	 */
	public static void sendMailByTemplate(Mail mail,
			Map<String, String> mailBodyMap, String templateName) {

		setMailBasicInfo(mail, null, mailBodyMap, templateName);
	}

	/**
	 * 使用模板发送带有附件的邮件
	 * 
	 * @param mail
	 * @param attachFilePathList
	 * @param mailBodyMap
	 * @param templateName
	 */
	public static void sendMailWithAttachByTemplate(Mail mail,
			List<String> attachFilePathList, Map<String, String> mailBodyMap,
			String templateName) {

		setMailBasicInfo(mail, attachFilePathList, mailBodyMap, templateName);
	}

	/**
	 * 设置邮件各部份的信息
	 * 
	 * @param mail
	 * @param attachFilePathList
	 * @param mailBodyMap
	 * @param templateName
	 */
	private static void setMailBasicInfo(Mail mail,
			List<String> attachFilePathList, Map<String, String> mailBodyMap,
			String templateName) {
		String server = mail.getHost();
		String protocol=mail.getProtocol();
		String port=mail.getPort();
		String sender = mail.getSender();
		String username = mail.getUsername();
		String password = mail.getPassword();
		String nickname = mail.getNickName();
		String mailBody = null;

		// 判断是采用模板还是使用普通方式加载邮件内容
		if (templateName == null || templateName.isEmpty()
				|| mailBodyMap == null || mailBodyMap.isEmpty()) {
			mailBody = mail.getMailBodyContent();
		} else {
			mailBody = FreemarkerUtil.generateHtmlFromFtl(templateName,
					mailBodyMap);
			// FreemarkerUtil.outputToConsole(templateName, mailBodyMap);
		}
		// 构建邮件发送对象
		MailSender mailSender = new MailSender(server,protocol,port, username, password);
		// 设置是否需要权限认证
		mailSender.setNeedSmtpAuth(true);
		// 设置发件人的名称和密码
		mailSender.setSenderNameAndPswd(username, password);
		// 设置发件人
		boolean configSenderResult = mailSender.setSender(sender, nickname);
		// 设置收件人列表
		boolean configReceiverResult = mailSender.setReceiver(mail
				.getReceiverList());
		//设置抄送人列表
		mailSender.setCopyTo(mail.getCopyToList());
		//设置密送人列表
		mailSender.setBCC(mail.getBccList());
		// 设置邮件标题
		mailSender.setMailSubject(mail.getSubject());
		// 设置邮件内容
		mailSender.setMailBody(mailBody);
		// 添加附件列表
		mailSender.addAttachment(attachFilePathList);
		// 发送邮件
		if (configReceiverResult && configSenderResult) {

			mailSender.sendMail();
		} else if (!configReceiverResult) {
			logger.error("收件人地址列表为空，无法发送邮件，请检查收件人地址!");
		} else {
			logger.error("发件人地址错误，无法发送邮件，请检查发件人地址!");
		}
	}

}

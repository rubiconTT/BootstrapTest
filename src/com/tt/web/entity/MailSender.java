package com.tt.web.entity;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;

import org.apache.log4j.Logger;

import com.tt.web.utils.SmtpAuth;

/**
 * 邮件发送服务类
 * @author karl
 *
 */
/**
 * @author karl
 *
 */
public class MailSender {

	private static Logger logger = Logger.getLogger(MailSender.class);

	private MimeMessage msg;
	private Multipart mp;
	private Session session;
	private Transport transport;
	private Properties props;

	/**
	 * 根据邮件发送服务器，发件人邮箱地址，发件人邮箱密码，构建邮件发送实体类实例
	 * 
	 * @param serverName
	 * @param userName
	 * @param smtpAuPwd
	 */
	public MailSender(String serverName,String protocol,String port, String userName, String password) {

		setMailSendServer(serverName,protocol,port);
		createMailSendSession(userName, password);
	}

	/**
	 * 创建邮件发送所需要的各元素
	 * 
	 * @param userName
	 * @param smtpAuPwd
	 */
	private void createMailSendSession(String userName, String password) {

		SmtpAuth smtpAuth = new SmtpAuth(userName, password);
		session = Session.getDefaultInstance(props, smtpAuth);
		
		session.setDebug(true);
		msg = new MimeMessage(session);
		mp = new MimeMultipart();
		
		logger.info("create mail send session and message success!");
		
	}

	/**
	 * 设置邮件发送服务器
	 * 
	 * @param serverName
	 */
	private void setMailSendServer(String serverName,String protocol,String port) {
		if (props == null) {
			props = System.getProperties();
		}
		props.put("MAIL.SMTP.SERVER", serverName);
		props.put("MAIL.TRANSPORT.PROTOCOL", protocol);
		props.put("MAIL.SMTP.PORT", port);
		
//		props.put("MAIL.SMTP.AUTH","true");
//		props.put("mail.smtp.socketfactory.class", "javax.net.ssl.SSLSocketFactory");
//		props.put("mail.smtp.socketfactory.port", "25");
//		props.put("mail.smtp.starttls.enable", "true");
//		props.put("MAIL.SMTP.PORT", "465");
		

		logger.info("set system property succeed,the mail send server is:["
					+ serverName+"],protocol is:["+protocol+"],port is:["+port+"]");
		
	}

	/**
	 * 访问邮件发送服务器是否需要权限
	 * 
	 * @param need
	 */
	public void setNeedSmtpAuth(boolean need) {
		if (props == null) {
			props = System.getProperties();
		}
		if (need) {
			props.put("MAIL.SMTP.AUTH", "true");
		} else {
			props.put("MAIL.SMTP.AUTH", "false");
		}

		logger.info("set smtp auth succeed,the auth is :" + need);
		
	}

	/**
	 * 设置邮件的标题
	 * 
	 * @param subject
	 */
	public void setMailSubject(String subject) {

		if (subject != null && !subject.isEmpty()) {

			try {
				msg.setSubject(MimeUtility.encodeText(subject, "utf-8", "B"));
				
				logger.info("set mail subject success, subject= "
							+ subject);
			} catch (MessagingException | UnsupportedEncodingException e) {

				logger.error(e.getMessage());
				logger.debug("set mail subject failed");
			}
		} else {
			logger.error("mail subject is blank,please enter it!");
		}
	}

	/**
	 * 设置邮件正文内容
	 * 
	 * @param mailBody
	 */
	public void setMailBody(String mailBody) {

		if (mailBody != null && !mailBody.isEmpty()) {

			try {
				MimeBodyPart mbp = new MimeBodyPart();
				// mbp.setText(mailBody,"utf-8","html");//只适用于文本类型的内容
				mbp.setContent(mailBody, "text/html;charset=utf-8");// 适用于任何类型的内容
				mp.addBodyPart(mbp);

				logger.info("set mail body content success,mailcontent= ["
							+ mailBody+"]");
			} catch (MessagingException e) {
				
				logger.debug(e.getMessage());
				logger.debug("set mail body content failed ");
			}
		} else {

			logger.error("mail content is blank,please reset!");
		}
	}

	/**
	 * 根据文件的路径名称，添加邮件的附件
	 * 
	 * @param AttachFilePath
	 */
	public void addAttachment(List<String> attachFilePathList) {
		try {
			if (attachFilePathList != null && attachFilePathList.size() > 0) {
				for (String attachFilePath : attachFilePathList) {
					FileDataSource fds = new FileDataSource(attachFilePath);
					MimeBodyPart mbp = new MimeBodyPart();
					mbp.setDataHandler(new DataHandler(fds));
					String fileName = MimeUtility.encodeText(fds.getFile()
							.getName(), "utf-8", "B");
					mbp.setFileName(fileName);
					mp.addBodyPart(mbp);
					
					logger.info("add mail attachment success,file name is "
								+ fds.getFile().getName());
				}
			} else {
				logger.warn("there is no attachment was attached!");
			}

		} catch (MessagingException e) {

			logger.error(e.getMessage());
			logger.debug("add mail attachment fail");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			logger.debug("add mail attachment fail,attachment name encoding fail");
		}
	}

	/**
	 * 设置邮件发件人
	 * 
	 * @param senderName
	 */
	public boolean setSender(String senderName, String nickName) {
		if (senderName != null && validateMailAddr(senderName)) {
			try {
				int endIndex = senderName.indexOf("@");
				String subSenderName = senderName.substring(0, endIndex);
				// 发件人昵称为空时取地址前半部分
				if (nickName != null && nickName.length() > 0) {

					nickName = MimeUtility.encodeText(nickName, "utf-8", "B");
				} else {
					nickName = MimeUtility.encodeText(subSenderName, "utf-8",
							"B");
				}
				// 设置邮件的发件人及昵称
				msg.setFrom(new InternetAddress(nickName + "<" + senderName
						+ ">"));
				
				logger.info("add mail sender success,sender name is "
							+ senderName);
				
				return true;
			} catch (AddressException e) {
				logger.error(e.getMessage());
				logger.debug("add mail sender fail");
				return false;
			} catch (MessagingException e) {
				logger.debug("add mail sender fail");
				logger.error(e.getMessage());
				return false;
			} catch (UnsupportedEncodingException e) {

				logger.error(e.getMessage());
				logger.debug("add mail sender fail");
				return false;
			}
		} else {
			logger.error("the mail sender address:[ " + senderName
					+ " ] is wrong,please check it!");
			return false;
		}
	}
	
	/**
	 * 设置单个收件人
	 * @param receiver
	 * @return
	 */
	public boolean setReceiver(String receiver) {
		
		if (receiver!= null && receiver.length() > 0&&validateMailAddr(receiver)) {
			try {
				InternetAddress[] ia=InternetAddress.parse(receiver);
				
				// 根据该网络地址设置邮件接收者类型为普通接收者类型
				msg.addRecipients(MimeMessage.RecipientType.TO, ia);
				logger.info("add mail receiver success,receiver address is[ "
							+ receiver + "]");
				return true;
			} catch (AddressException e) {
				logger.error(e.getMessage());
				logger.debug("mail address is wrong!");
				return false;
			} catch (MessagingException e) {
				logger.error(e.getMessage());
				logger.debug("add mail receiver fail");
				return false;
			}
		} else {
			logger.error("there is no receiver email address or email address error,please check it !");
			return false;
		}
	}

	/**
	 * 添加邮件收件人列表
	 * 
	 * @param receiverList
	 */
	public boolean setReceiver(List<String> receiverList) {
		// 转换收件人列表为字符串类型
		String receiverAddrListStr = transferMailAddr(receiverList);
		if (receiverAddrListStr != null && receiverAddrListStr.length() > 0) {
			try {
				// 将字符串类型的地址转换为网络地址
				InternetAddress[] address = InternetAddress
						.parse(receiverAddrListStr);
				// 根据该网络地址设置邮件接收者类型为普通接收者类型
				msg.addRecipients(MimeMessage.RecipientType.TO, address);
				logger.info("add mail receiver success,receiver address is[ "
							+ receiverAddrListStr + "]");
				return true;
			} catch (AddressException e) {
				logger.error(e.getMessage());
				logger.debug("mail address is wrong!");
				return false;
			} catch (MessagingException e) {
				logger.error(e.getMessage());
				logger.debug("add mail receiver fail");
				return false;
			}
		} else {
			logger.error("there is no receiver email address,please check it !");
			return false;
		}
	}

	// 转换收件人列表中的地址格式
	private String transferMailAddr(List<String> emailAddressList) {

		StringBuilder addrsb = new StringBuilder();
		if (emailAddressList != null && emailAddressList.size() > 0) {
			for (String address : emailAddressList) {
				if (validateMailAddr(address)) {
					addrsb.append(address).append(",");
				} else {
					logger.error("this email address:[" + address
							+ "] is wrong,please check it!");
					continue;
				}
			}
		} else {
			logger.debug("there is no email address!");
		}

		return addrsb.toString();

	}

	// 验证邮件地址格式
	private boolean validateMailAddr(String mailAddr) {

		String mailAddrCheck = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
		Pattern regex = Pattern.compile(mailAddrCheck);
		Matcher match = regex.matcher(mailAddr);
		return match.matches();
	}

	/**
	 * 添加邮件的抄送人
	 * 
	 * @param copytoList
	 */
	public void setCopyTo(List<String> copytoList) {
		String copyToAddrListStr = transferMailAddr(copytoList);
		if (copyToAddrListStr != null && copyToAddrListStr.length() > 0) {
			try {
				InternetAddress[] address = InternetAddress
						.parse(copyToAddrListStr);
				// 设置该接收者类型为抄送类型
				msg.addRecipients(MimeMessage.RecipientType.CC, address);
				
				logger.info("add mail cc success,cc name is ["
							+ copyToAddrListStr+"]");
				
			} catch (AddressException e) {
				logger.error(e.getMessage());
				logger.debug("add mail cc fail");
			} catch (MessagingException e) {
				logger.error(e.getMessage());
				logger.debug("add mail cc fail");
			}
		} else {
			logger.error("there is no cc email address,please check it !");
		}
	}

	/**
	 * 添加邮件密送人
	 * 
	 * @param bccList
	 */
	public void setBCC(List<String> bccList) {

		String bccAddrListStr = transferMailAddr(bccList);
		if (bccAddrListStr != null && bccAddrListStr.length() > 0) {
			try {
				InternetAddress[] address = InternetAddress
						.parse(bccAddrListStr);
				// 设置该接收者类型为密送者
				msg.addRecipients(MimeMessage.RecipientType.BCC, address);
					logger.info("add mail bcc success,bcc address is ["
							+ bccAddrListStr+"]");
			} catch (AddressException e) {
				logger.error(e.getMessage());
				logger.debug("add mail bcc fail");
			} catch (MessagingException e) {
				logger.error(e.getMessage());
				logger.debug("add mail bcc fail");
			}
		} else {
			logger.error("there is no bcc email address,please check it !");
		}
	}

	/**
	 * 发送邮件
	 */
	public void sendMail() {

		try {
			msg.setContent(mp);// 设置邮件各部份信息
			msg.saveChanges();// 保存邮件各部份设置信息
			
			transport = session.getTransport(props.getProperty("MAIL.TRANSPORT.PROTOCOL"));// 邮件协议
			transport.connect(props.getProperty("MAIL.SMTP.SERVER"),
					props.getProperty("MAIL.SMTP.USERNAME"),
					props.getProperty("MAIL.SMTP.PASSWORD"));// 连接邮件发送服务器
			
			transport.sendMessage(msg, msg.getAllRecipients());// 发件
			
			logger.info("邮件发送成功!");
			
		} catch (NoSuchProviderException e) {

			e.printStackTrace();
			logger.error("邮件发送失败!");
		} catch (MessagingException e) {
            
			logger.error(e.getMessage());
			logger.error("邮件发送失败!");
			e.printStackTrace();
		} finally {

			if (transport != null) {
				try {
					transport.close();// 关闭服务
				} catch (MessagingException e) {
					e.printStackTrace();
					logger.error(e.getMessage());
				}
			}
		}
	}

	/**
	 * 添加邮件发件人的信息
	 * 
	 * @param username
	 * @param nickname
	 * @param password
	 */
	public void setSenderNameAndPswd(String username, String password) {

		if (props == null) {
			props = System.getProperties();
		}
		if (username != null && username.length() > 0) {

			props.put("MAIL.SMTP.USERNAME", username);
		} else {
			logger.error("username is null,please check it!");
		}
		if (password != null && password.length() > 0) {

			props.put("MAIL.SMTP.PASSWORD", password);
		} else {
			logger.error("password is null,please check it!");
		}
	}

}

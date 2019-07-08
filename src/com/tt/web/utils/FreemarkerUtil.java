package com.tt.web.utils;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Map;

import com.tt.web.config.ConfigLoader;

import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

/**
 * free marker模板处理工具类
 * @author karl
 *
 */
/**
 * @author karl
 *
 */
/**
 * @author karl
 *
 */
public class FreemarkerUtil {
	
	/**
	 * 根据模板文件名称，获取对应的模板
	 * @param name
	 * @return
	 */
	public static Template getTemplate(String name){
		try {
		Configuration cfg=new Configuration(Configuration.VERSION_2_3_25);
		cfg.setClassForTemplateLoading(FreemarkerUtil.class,"/ftl");
		cfg.setDefaultEncoding("UTF-8");
			Template template=cfg.getTemplate(name);
			
			return template;
		} catch (TemplateNotFoundException e) {
			e.printStackTrace();
		} catch (MalformedTemplateNameException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	/**
	 * 根据模板名称，模板内容值对，将生成的内容输出到控制台
	 * @param name
	 * @param map
	 */
	public static void outputToConsole(String name, Map<String, String> map){
		try {
			Template template=getTemplate(name);
			
			template.process(map, new PrintWriter(System.out));
		} catch (TemplateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 根据模板名称，模板内容键值对，生成内容并输出到指定文件中
	 * @param name
	 * @param map
	 * @param outFile
	 */
	public static void outputToFile(String name,Map<String, String> map,String outFile){
		
		FileWriter out=null;
		
		try {
			out=new FileWriter(outFile);
			Template template=getTemplate(name);
			template.process(map, out);
			
		} catch (IOException | TemplateException e) {
			e.printStackTrace();
		}finally{
			try {
				if(out!=null){
					out.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
	}
	
	/**
	 * 根据模板名称及模板内容键值对，生成对应html格式的内容
	 * @param name
	 * @param map
	 * @return
	 */
	public static String generateHtmlFromFtl(String name,Map<String, String> map){
		
		Writer out=new StringWriter(2048);
		Template template=getTemplate(name);
		try {
			template.process(map, out);
			return out.toString();
		} catch (TemplateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		return null;
	}

}

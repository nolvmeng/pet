package pet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.antlr.stringtemplate.StringTemplateGroup;

import com.pet.service.impl.MailService;

public class OSSClientConstants {
	
	static{
		 
		String classpath = MailService.class.getClassLoader().getResource("").getPath();
		 
		Properties prop = new Properties();  
		try {
			InputStream in = new FileInputStream(classpath+"/db.properties");  
			prop.load(in);
			ENDPOINT = prop.getProperty("img_base_url");
			ACCESS_KEY_ID = prop.getProperty("access_key_ID");
			ACCESS_KEY_SECRET = prop.getProperty("access_key_Secret");
			BACKET_NAME = prop.getProperty("bucket");
			FOLDER = prop.getProperty("folder");
		 
			 
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	//阿里云API的外网域名  
    public static  String ENDPOINT ;  
    //阿里云API的密钥Access Key ID  
    public static  String ACCESS_KEY_ID  ;  
    //阿里云API的密钥Access Key Secret  
    public static  String ACCESS_KEY_SECRET ;  
    //阿里云API的bucket名称  
    public static  String BACKET_NAME ;  
    //阿里云API的文件夹名称  
    public static  String FOLDER ;  
	

}

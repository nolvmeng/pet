package pet;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import com.pet.service.MailService;

public class EmailServiceTest {
	private ApplicationContext context=null;
	@Before
	public void init(){
		
		context=new ClassPathXmlApplicationContext("spring/spring-bean.xml");
	
	
	}
	
	
	@Test
	public void test() {
		 JavaMailSenderImpl mailSender = (JavaMailSenderImpl) context.getBean("mailSender");
		 MailService mailService = new  MailService();
		 mailService.setMailSender(mailSender);
		 mailService.sendAccountActivationEmail("1335255007@qq.com", "32664300");

		
	}

}

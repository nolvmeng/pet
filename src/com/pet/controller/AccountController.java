package com.pet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pet.service.MailService;
import com.pet.util.CipherUtil;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Autowired
	@Qualifier("mailService")
	private MailService mailService;
	

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void login(HttpSession session) {
		String str = "12345";
		String email = "qq.com";
		
	String ed_stgr = CipherUtil.generatePassword(str );
	String ed_email  = CipherUtil.generateActivationUrl(str, email);
	
		 System.out.println(ed_stgr);
         System.out.println(ed_email  );
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register() {
		 
		mailService.sendAccountActivationEmail("1335255007@qq.com", "32664300");
		
		 System.out.println("jin");
		 return "/account/register";
	}
}

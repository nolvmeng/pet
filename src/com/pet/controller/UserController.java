package com.pet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pet.pojo.User;
import com.pet.service.UserService;
import com.pet.service.impl.MailService;

@Controller
@RequestMapping("/userController")
public class UserController {
	@Autowired
	private UserService userService;
	

	@Autowired
	@Qualifier("mailService")
	private MailService mailService;
	
	@RequestMapping("/getUserById")
	public ModelAndView getUserById()throws Exception{
		User user=userService.getUserById(1);
		ModelAndView mav=new ModelAndView();
		mav.addObject("user", user);
		mav.setViewName("showUser");
		return mav;
	}
	
	@RequestMapping("/addUser")
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,User user)throws Exception{
		
		ModelAndView mav=new ModelAndView();
		userService.addUser(user);
		//mailService.sendAccountActivationEmail(user.getEmail(),key);//发送激活邮件
		
		mav.setViewName("redirect:/login.jsp");//后期改跳转邮件发送提示页
		
		return mav;
	}
	
	@RequestMapping("/findUser")
	public ModelAndView findUser(HttpServletRequest request, HttpServletResponse response,User user)throws Exception{
		
		ModelAndView mav=new ModelAndView();
		if(userService.findUser(user) != null)
			{
			User u = userService.findUser(user);
			request.getSession().setAttribute("u", u);
		mav.setViewName("index");}
		else mav.setViewName("redirect:/login.jsp");
		return mav;
	}
}

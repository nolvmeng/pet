package com.pet.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
			          User user,HttpSession session)throws Exception{
		Map map = new HashMap<String, Object>();
		ModelAndView mav=new ModelAndView();
		userService.addUser(user, map);
		mailService.sendAccountActivationEmail(user.getEmail(),map.get("key").toString());//发送激活邮件
		session.setAttribute("uid", map.get("uid"));
		mav.setViewName("redirect:/login.jsp");//后期改跳转邮件发送提示页
		
		return mav;
	}
	@ResponseBody
	@RequestMapping("/activation")
	public ModelAndView activation(@RequestParam("key") String key, 
								   @RequestParam("email") String email, 
								   HttpSession session) {
		
		System.out.println("jinxing进行用户激活");
		//int uid =  (int) session.getAttribute("uid");
		User user = userService.findByEmail(email);
		String realEmail = user.getEmail();
		String realKey = user.getUser_activationKey();
		ModelAndView mav = new ModelAndView();
		if(realKey.equals(key)&&realEmail.equals(email)){
			user.setUser_status(0);
			userService.updateStatus(user);//更新状态
			mav.setViewName("activationSuccessful");
		}else mav.setViewName("error");
	
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

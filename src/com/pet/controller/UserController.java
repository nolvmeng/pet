package com.pet.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public ModelAndView getUserById(HttpServletRequest request, HttpServletResponse response)throws Exception{
    	User u = (User)request.getSession().getAttribute("u");
		User user=userService.getUserById(u.getU_id());
		System.out.println(user.getUser_info());
		ModelAndView mav=new ModelAndView();
		mav.addObject("user", user);
		mav.setViewName("UMessage");
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
		mav.setViewName("EmailSuccess");//后期改跳转邮件发送提示页
		
		return mav;
	}
	/**
	 * ajax验证用户名是否存在
	 * @param model
	 * @param userName
	 * @return
	 */
	@ResponseBody  
    @RequestMapping(value ="/isExist", produces = "application/json")   
    public boolean isExist(Model model,String user_name) {  
          
        boolean flag = userService.isExistUserName(user_name);  
          System.out.println("dddddd\n"+flag+"cccccc\n");
        
          return flag;
    }   
	/**
	 * ajax验证邮箱是否已注册
	 * @param model
	 * @param userName
	 * @return
	 */
	@ResponseBody  
    @RequestMapping(value ="/email_isExist", produces = "application/json")   
    public boolean email_isExist(Model model,String email) {  
          
        boolean flag = userService.email_isExistUserName(email);  
          System.out.println("dddddd\n"+flag+"cccccc\n");
          if (flag)
             return false;  
          return true;
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
	/**
	 * 用于登录
	 * @param request
	 * @param response
	 * @param session
	 * @param user
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findUser")
	public ModelAndView findUser(HttpServletRequest request, HttpServletResponse response,HttpSession session,User user)throws Exception{
		
		ModelAndView mav=new ModelAndView();
		User u = userService.findUser(user);
		if(u != null)
			{
		//	User u = userService.findUser(user);
			session.setAttribute("u", u);
			//User o = (User)session.getAttribute("u");//获得u_id
		//	System.out.println("看这里"+o.getU_id());
			
		mav.setViewName("redirect:/index.action");}
		else mav.setViewName("redirect:/login.jsp");
		return mav;
	}
	
}

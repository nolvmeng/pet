package com.pet.controller;





import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;













import com.pet.pojo.Adopt;
import com.pet.pojo.Cpet;
import com.pet.pojo.Img;
import com.pet.pojo.Regist;
import com.pet.pojo.User;
import com.pet.service.AdoptService;
import com.pet.service.CpetService;
import com.pet.service.RegistService;
import com.pet.service.UserService;

@Controller
@RequestMapping("/adoptController")
public class AdoptController {
	@Autowired
	private RegistService registService;
	@Autowired
	private UserService userService;
	@Autowired
	private CpetService cpetService;
	@Autowired
	private AdoptService adoptService;
	
	
	@RequestMapping("/getCpetOrder")
	public ModelAndView getCpetOrder(HttpServletRequest request,HttpServletResponse response,Integer r_id) throws IOException{
		ModelAndView mav = new ModelAndView();
		//转发登记表与图片
		Regist regist = registService.getCpetById(r_id);
		
		Cpet cpet = cpetService.getImgByCid(regist.getCpet().getC_id());
		
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		User u = (User)request.getSession().getAttribute("u");
		User user=userService.getUserById(u.getU_id());
		if(u.getU_id()!=regist.getU_id())
		{mav.addObject("regist", regist);
		mav.addObject("cpet", cpet);
		mav.addObject("user", user);
		mav.setViewName("adopt");}
		else {
			out.print("<script language=\"javascript\">alert('登录失败！');window.location.href='/pet/jsp/pet_detail'</script>");
			mav.setViewName("redirect:/registController/getCpetById.action?r_id="+r_id);
		}
		return mav;
	}
	
	@RequestMapping("/addAdopt")
	public ModelAndView addAdopt(HttpServletRequest request,HttpServletRequest response,Adopt adopt){
		ModelAndView mav = new ModelAndView();
		User u = (User)request.getSession().getAttribute("u");
		Regist regist = registService.getCpetById(adopt.getR_id());
		
			int adopter = u.getU_id();
			adopt.setAdopter(adopter);
		//else 弹出你不能领养自己登记的宠物！
		if(adoptService.addAdopt(adopt, adopt.getR_id())){
			mav.setViewName("redirect:/userController/getUserById.action");
		}//else 弹到错误页面
		return mav;
			
		
	}
}

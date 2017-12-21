package com.pet.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pet.pojo.Cpet;
import com.pet.pojo.Img;
import com.pet.pojo.Regist;
import com.pet.service.CpetService;
import com.pet.service.RegistService;


@Controller
public class PageController {
	@Autowired
	private RegistService registService;
	@Autowired
	private CpetService cpetService;
	@RequestMapping("/registPet")
	public String regitPet(){
		System.out.println("进入页面跳转");
		return "registPet";
	}
	
	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
		System.out.println("跳转到主页");
		List<Regist> regists = registService.getAdoptBycategory("");
		Map<Integer, List<Img>> map = new HashMap<Integer, List<Img>>();
		for(Regist r:regists){
			Cpet cpet = cpetService.getImgByCid(r.getCpet().getC_id());
			List<Img> imgs = cpet.getImgs();
			System.out.println(imgs.size()+"====================================="+r.getCpet().getC_id());
			System.out.println(imgs.get(0).getImg_id());
			
			map.put(r.getCpet().getC_id(), imgs);
		}
		
		request.setAttribute("imgs", map);
		if(regists.size()>0){
			mav.addObject("regists", regists);
			
		}
		mav.setViewName("index");
		return mav;
	}
   @RequestMapping("/")
   public ModelAndView logOut(HttpServletRequest request, HttpServletResponse response){
	ModelAndView mav = new ModelAndView();
	mav.setViewName("redirect:/login.jsp");
	request.getSession().setAttribute("u", null);
	
	return mav;
	}
	
	
}

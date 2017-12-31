package com.pet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pet.pojo.Cpet;
import com.pet.pojo.Img;
import com.pet.pojo.Regist;
import com.pet.service.CpetService;
import com.pet.service.RegistService;

@Controller
@RequestMapping("/registController")
public class RegistController {
	@Autowired
	private RegistService registService;
	@Autowired
	private CpetService cpetService;
	
	@RequestMapping(value="/getAdoptBycategory",method=RequestMethod.GET)
	public ModelAndView getAdoptBycategory(HttpServletRequest request, HttpServletResponse response,String category){
		ModelAndView mav = new ModelAndView();
		
		List<Regist> regists = registService.getAdoptBycategory(category);
		Map<Integer, List<Img>> map = new HashMap<Integer, List<Img>>();
		if(regists.size()>0){
			for(Regist r:regists){
				
				if(cpetService.getImgByCid(r.getCpet().getC_id())!=null){
					Cpet cpet = cpetService.getImgByCid(r.getCpet().getC_id());
				List<Img> imgs = cpet.getImgs();
				System.out.println(imgs.size()+"====================================="+r.getCpet().getC_id());
				System.out.println(imgs.get(0).getImg_id());
				
				map.put(r.getCpet().getC_id(), imgs);
			
			request.setAttribute("category", category);
			request.setAttribute("imgs", map);}
			
				mav.addObject("regists", regists);
				
			}
		}
			mav.addObject("regists", regists);
			mav.setViewName("pet_list");
		
		return mav;	
	}
	
	@RequestMapping(value="/getCpetById",method=RequestMethod.GET)
	public ModelAndView getCpetById(HttpServletRequest request, HttpServletResponse response,Integer r_id){
		ModelAndView mav = new ModelAndView();
		
		if(registService.getCpetById(r_id)!=null){
			Regist regist = registService.getCpetById(r_id);
			
			if(regist.getCpet().getCategory().equals("cat"))
			{
				Cpet cpet =regist.getCpet();
				cpet.setCategory("猫");
				regist.setCpet(cpet);
			}else if(regist.getCpet().getCategory().equals("dog")){
				Cpet cpet = regist.getCpet();
				cpet.setCategory("狗");
				regist.setCpet(cpet);
			}
			Map<Integer, List<Img>> map = new HashMap<Integer, List<Img>>();
			Cpet cpet = cpetService.getImgByCid(regist.getCpet().getC_id());
			List<Img> imgs = cpet.getImgs();
			map.put(regist.getCpet().getC_id(), imgs);
			request.setAttribute("imgs", map);
			mav.addObject("regist", regist);
			mav.setViewName("pet_detail");
		}
		return mav;
		
	}
}

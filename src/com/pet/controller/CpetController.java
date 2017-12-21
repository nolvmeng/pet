package com.pet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pet.pojo.Cpet;
import com.pet.pojo.Regist;
import com.pet.pojo.User;
import com.pet.service.CpetService;
import com.pet.service.RegistService;
import com.pet.service.impl.ImgService;

@Controller
@RequestMapping("/cpetController")
public class CpetController {
	@Autowired
	private CpetService cpetService;
	@Autowired
	private RegistService registService;
	@Autowired
	@Qualifier("imgService")
	private ImgService imgService ;
	
	@RequestMapping("/addCpet")
	public ModelAndView addCpet(HttpServletRequest request, HttpServletResponse response,Cpet cpet,@RequestParam("file[]") MultipartFile[] file){
		ModelAndView mav = new ModelAndView();
		Regist regist = new Regist();
		User u = (User)request.getSession().getAttribute("u");//获得u_id
		System.out.println("看这里"+u.getU_id());
		//猫变cat，狗变dog
		String cat = "cat";
		String dog = "dog";
		String category = cpet.getCategory();
		if(cpet.getCategory().equals("猫")){
			
			category=cat;
		}else if(cpet.getCategory().equals("狗")){
			category=dog;
		}	
		cpet.setCategory(category);
		System.out.println("c_id"+cpet.getC_id()+"category"+category+cpet.getNickname());
		
		if(cpetService.addCpet(cpet)>-1){	
		regist.setC_id(cpet.getC_id());//设置c_id	
		regist.setU_id(u.getU_id());//设置u_id
		
		int  object_id = 1 ;

		object_id= cpet.getC_id();
		
		
        	System.out.println("文件大小："+file.length);
        	 if (file.length != 0) {  
                 try {  
                  
                 	imgService.uploadPhotos(file, "post/", object_id);
                 	
                 	
                 } catch (Exception e) {  
                     e.printStackTrace();  
                 }  
             }  
		
        registService.addRegist(regist);
        mav.setViewName("redirect:/index.action");
        return mav;
		}else{
			response.setContentType("text/html;charset=gb2312");
			
		try {
			PrintWriter out = response.getWriter();
			out.print("<script language=\"javascript\">alert('登记失败！');window.location.href='/Pet/registPet.action'</script>");
	    return mav;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		}
		
	}
	
	

}

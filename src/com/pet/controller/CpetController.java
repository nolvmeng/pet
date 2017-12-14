package com.pet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 
import com.pet.pojo.Cpet;
import com.pet.pojo.Regist;
import com.pet.pojo.User;
import com.pet.service.CpetService;
import com.pet.service.RegistService;

@Controller
@RequestMapping("/cpetController")
public class CpetController {
	@Autowired
	private CpetService cpetService;
	@Autowired
	private RegistService registService;
	
	@RequestMapping("/addCpet")
	public String addCpet(HttpServletRequest request, HttpServletResponse response,Cpet cpet){
		Regist regist = new Regist();
		User u = (User)request.getSession().getAttribute("u");
		System.out.println("看这里"+u.getU_id());
		
		if(cpetService.addCpet(cpet)!=null){	
		regist.setC_id(cpet.getC_id());
		System.out.println("c_id"+cpet.getC_id());
		regist.setU_id(u.getU_id());
        registService.addRegist(regist);
		return "registPet";
		}else{
			response.setContentType("text/html;charset=gb2312");
		try {
			PrintWriter out = response.getWriter();
			out.print("<script language=\"javascript\">alert('登记失败！');window.location.href='/Pet/registPet.action'</script>");
	    return "registPet";
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		}
	}
	
}

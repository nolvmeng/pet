package com.pet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;







import com.pet.pojo.Regist;
import com.pet.service.RegistService;
@Controller
public class TestController {
	@Autowired
	
	private RegistService registService;
	
	
	@RequestMapping("/imgtest")
	public void addCpet(HttpServletRequest request, HttpServletResponse response){
		Integer id=(Integer) request.getSession().getAttribute("c_id");
		System.out.println("c_id======"+id);
	}
}

package com.pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PageController {
	
	
	@RequestMapping("/registPet")
	public String regitPet(){
		System.out.println("进入页面跳转");
		return "registPet";
	}
}

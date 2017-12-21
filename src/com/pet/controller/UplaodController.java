package com.pet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.pet.service.impl.ImgService;

@Controller
@RequestMapping("/upload")
public class UplaodController {
	
	@Autowired
	@Qualifier("imgService")
	private ImgService ImgService ;
	
	@RequestMapping("/img")
	public void imgFlie(@RequestParam("file") MultipartFile[] file){
		System.out.println("laidaozheli");
		// 判断文件是否为空  
        if (file.length != 0) {  
            try {  
            	ImgService.uploadPhotos(file, "post/",1);
            	
            	
            } catch (Exception e) {  
                e.printStackTrace();  
            }  
        }  
		
	}
	
	/**
	 * 上传并处理来自页面的多个文件
	 * @param file
	 */
	@RequestMapping("/imgUpload")
	public void imgtest(@RequestParam("file[]") MultipartFile[] file, HttpSession session){
		System.out.println("imgtest");
		// 判断文件是否为空  

		int  object_id = 1 ;

		object_id= (session.getAttribute("c_id")==null)
			     	?1: Integer.valueOf((session.getAttribute("c_id").toString()));
		
		
        	System.out.println("文件大小："+file.length);
        	 if (file.length != 0) {  
                 try {  
                  
                  
                 //	ImgService.uploadPhotos(file, "post/", object_id);
                 	
                 	
                 } catch (Exception e) {  
                     e.printStackTrace();  
                 }  
             }  
		
	}
}

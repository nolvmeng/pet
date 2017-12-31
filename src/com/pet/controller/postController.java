package com.pet.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pet.pojo.Post;
import com.pet.pojo.User;
import com.pet.pojo.Img;
import com.pet.service.IPostService;
import com.pet.service.IRepliesService;
import com.pet.service.UserService;
import com.pet.service.impl.RepliesServiceImpl;
 

@Controller
@RequestMapping("/postController")
public class postController {
	@Autowired
	private IPostService postService;
	
	@Autowired
	private UserService userService;
	
	public ModelAndView save()throws Exception{
		return null;
	}

	//��ȡ�����б�
	@RequestMapping(value="/getAllPost",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView getPostAll(HttpServletRequest arg0,
			HttpServletResponse arg1,Model model)throws Exception{
		List<Post> post = new ArrayList<Post>();
		post=postService.getPostAll();
		List<Img> img = new ArrayList<Img>();
		
		for(int k=0;k<post.size();k++){
			Post p = post.get(k);
			Set<Img> set=p.getImg();
			for (Iterator iterator = set.iterator(); iterator.hasNext();) {
				Img img2 = (Img) iterator.next();
				System.out.println("JINRUCHENGGON"+img2.getImg_id()+img2.getKey());
				img.add(img2);
			}
		}
		System.out.println("img_size=========="+ post.size());
		
		ModelAndView mav=new ModelAndView();
		//mav.addObject("post", post);
		mav.addObject("img", img);
		arg0.setAttribute("post", post);
		mav.setViewName("blog-v1");	
		return mav;
	}
	
	//����
	@RequestMapping(value="/post_Submit",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView post_Submit(HttpServletRequest request,
			HttpServletResponse respond,Model model)throws Exception{
		//String author_string = request.getSession().getAttribute("uid").toString();
		//String author_string =request.getParameter("author");
		User u = (User)request.getSession().getAttribute("u");
		System.out.println("==================="+u.toString());
		//User user = userService.getUserById(u.getU_id());
		//System.out.println("user==================="+user.toString());
		int author = u.getU_id();
		String type =request.getParameter("type");
		String title =request.getParameter("title");
		String context =request.getParameter("context");
		String tag =request.getParameter("tag");                     
		
		//��ȡ�ϴ�ͼƬ�б�
		List<String> key_list = new ArrayList<String>();
		if(request.getParameter("key1") != null){
			key_list.add(request.getParameter("key1"));
		}
		if(request.getParameter("key2") != null){
			key_list.add(request.getParameter("key2"));
		}
		if(request.getParameter("key3") != null){
			key_list.add(request.getParameter("key3"));
		}
		
		Post post = new Post();
		post.setAuthor(author);
		post.setContext(context);
		post.setTag(tag);
		post.setType(type);
		post.setTitle(title);
		
		String execute = postService.post_Submit(post, key_list);
		System.out.println(execute);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("blog-details");	
		return this.getPostAll(request, respond, model);
		
	}
	
	//ɾ������
	@RequestMapping(value="/post_Delete",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView post_Delete(HttpServletRequest request,
			HttpServletResponse respond,Model model)throws Exception{
		String id_last = request.getParameter("post_id");
		int post_id = Integer.parseInt(id_last);
				
		String execute = postService.post_Delete(post_id);
		System.out.println(execute);
		ModelAndView mav=new ModelAndView();
		mav = this.getPostAll(request, respond, model);
		return mav;
	}
}
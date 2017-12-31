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

import com.pet.pojo.Img;
import com.pet.pojo.Post;
import com.pet.pojo.Replies;
import com.pet.pojo.User;
import com.pet.service.IRepliesService;
import com.pet.service.UserService;

@Controller
@RequestMapping("/repliesController")
public class repliesController {
	@Autowired
	private IRepliesService repliesService;
	
	@Autowired
	private UserService userService;
	
	static int post_id;
	
	public ModelAndView save()throws Exception{
		return null;
	}
	
 
	@RequestMapping(value="/getAllReplies",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView getPostAll(HttpServletRequest request,
			HttpServletResponse arg1,Model model)throws Exception{
		if(request.getParameter("post_id")!=null){
		String id_last = request.getParameter("post_id");
		post_id = Integer.parseInt(id_last);
		}
		List<User> user_list = userService.getUserAll();
		Post post = repliesService.getAllReplies(post_id);
		System.out.println("aut_controller=============="+post.getAuthor());
		List<Replies> rep_list = new ArrayList<Replies>();
		List<Img> img_list = new ArrayList<Img>();
		
		Set<Replies> set=post.getReplies();
		for(Iterator iterator = set.iterator(); iterator.hasNext();){
			Replies replies = (Replies) iterator.next();
			rep_list.add(replies);
			System.out.println("getAllReplies========="+replies.getContext()+"+"+replies.getH_id()+replies.getTs());
		}
		Set<Img> set_img=post.getImg();
		for(Iterator iterator_img = set_img.iterator(); iterator_img.hasNext();){
			Img img = (Img) iterator_img.next();
			img_list.add(img);
			System.out.println("img_key=================="+img.getKey());
		}
		User user = (User) request.getSession().getAttribute("u");
		int u_id = user.getU_id();
		
		ModelAndView mav=new ModelAndView();
		request.setAttribute("post", post);
		request.setAttribute("img_list", img_list);
		request.setAttribute("req_list", rep_list);
		request.setAttribute("user_list", user_list);
		request.setAttribute("u_id", u_id);
		mav.setViewName("blog-details");
		return mav;
	}
	
 
	@RequestMapping(value="/replies_Submit",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView replies_Submit(HttpServletRequest request,
			HttpServletResponse arg1,Model model)throws Exception{
			String post_id_last = request.getParameter("post_id");
			String r_id_last = request.getParameter("r_id");
			
			//String post_id_last = request.getSession().getAttribute("post_id").toString();
			User u = (User)request.getSession().getAttribute("u");
			//User user = userService.getUserById(u.getU_id());
			int u_id = u.getU_id();
			String context = request.getParameter("context");
			int post_id = Integer.parseInt(post_id_last);
			
			Replies replies = new Replies();
			replies.setPost_id(post_id);
			replies.setContext(context);
			replies.setU_id(u_id);
			
			if(r_id_last != null){
				int r_id = Integer.parseInt(r_id_last);
				replies.setR_id(r_id);
			}
			
			String execute = repliesService.replies_Submit(replies);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("blog-v1");
			return this.getPostAll(request, arg1, model);
		}
	
	 
	@RequestMapping(value="/replies_Delete",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView replies_Delete(HttpServletRequest request,
			HttpServletResponse arg1,Model model)throws Exception{
		    
		    String hid_last = request.getParameter("h_id");
		    int h_id = Integer.parseInt(hid_last);
		    
		    List<Integer> hid_list = new ArrayList<Integer>();
		    hid_list.add(h_id);
		    String execute = repliesService.replies_Delete(hid_list);
		    ModelAndView mav = new ModelAndView();
		    mav = this.getPostAll(request, arg1, model);
			return mav;
		
	}
}

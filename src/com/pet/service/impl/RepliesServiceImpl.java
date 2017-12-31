package com.pet.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.RepliesMapper;
import com.pet.pojo.Img;
import com.pet.pojo.Post;
import com.pet.pojo.Replies;
import com.pet.pojo.User;
import com.pet.service.IRepliesService;

@Service("repliesService")
public class RepliesServiceImpl implements IRepliesService{
	@Autowired
	private RepliesMapper repliesMapper;

	@Override
	public Post getAllReplies(Integer post_id) {
		System.out.println("post_id+++++++++++"+post_id);
		Post all_post= repliesMapper.getAllReplies(post_id);
		Set<Img> img_list = repliesMapper.getpost_img(post_id);
		//User user = repliesMapper.getpost_user(post_id);
		System.out.println("aut_service============"+all_post.getAuthor());
		System.out.println("service+++++++++++"+all_post.getPost_id());
		all_post.setImg(img_list);
		return all_post;
	}

	@Override
	public String replies_Submit(Replies replies) {
		System.out.println("post_id====================="+replies.getPost_id());
		repliesMapper.replies_Submit(replies);
		return "success";
	}
	
	@Override
	public String replies_Delete(List<Integer> h_id) {
		List<Integer> hid_list= repliesMapper.getReplies_hid(h_id);
		if(hid_list.size()!=0) {repliesMapper.replies_Delete(hid_list);}
		repliesMapper.replies_Delete(h_id);
		return "success";
	}
}

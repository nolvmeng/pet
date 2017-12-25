package com.pet.mapper;


import java.util.List;
import java.util.Set;

import  com.pet.pojo.Img;
import  com.pet.pojo.Post;
import  com.pet.pojo.Replies;
import  com.pet.pojo.User;


public interface RepliesMapper {
	public Post getAllReplies(Integer post_id);
	public Set<Img> getpost_img(Integer post_id);
	
	public void replies_Submit(Replies replies);
	public void replies_Delete(List<Integer> hid_list);
	public List<Integer> getReplies_hid(List<Integer> h_id);
} 

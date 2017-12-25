package com.pet.service;

import java.util.List;

import com.pet.pojo.Post;
 

public interface IPostService {
	public List<Post> getPostAll();
	public String post_Submit(Post post,List<String> key);     
	String post_Delete(Integer post_id);
}

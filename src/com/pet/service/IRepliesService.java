package com.pet.service;

import java.util.List;

import com.pet.pojo.Post;
import com.pet.pojo.Replies;
import com.pet.pojo.User;

public interface IRepliesService {
	public Post getAllReplies(Integer post_id);
	public String replies_Submit(Replies replies);
	public String replies_Delete(List<Integer> h_id);
}

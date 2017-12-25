package com.pet.mapper;

import java.util.List;

import com.pet.pojo.Img;
import com.pet.pojo.Post;
import com.pet.pojo.Replies;

public interface PostMapper {
	public List<Post> getPostAll();
	
	public int post_Submit(Post post);
	public void img_Submit(List<Img> img_list);
	public Post select_newPost(int author,String title);
	
	public List<Integer> getReplies_hid(Integer post_id);
	public void img_Delete(Integer post_id);
	public void post_Delete(Integer post_id);
}

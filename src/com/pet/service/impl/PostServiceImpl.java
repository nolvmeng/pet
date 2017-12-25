package com.pet.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.PostMapper;
import com.pet.mapper.RepliesMapper;
import com.pet.pojo.Img;
import com.pet.pojo.Post;
import com.pet.service.IPostService;

@Service("postService")
public class PostServiceImpl implements IPostService{
	@Autowired
	private PostMapper postMapper;
	@Autowired
	private RepliesMapper repliesMapper;

	@Override
	public List<Post> getPostAll() {
		List<Post> post=postMapper.getPostAll();
		return post;
	}
	

	@Override
	public String post_Submit(Post post, List<String> key) {
		int id = postMapper.post_Submit(post);

		if(key.size() != 0)   {
			List<Img> img_list= img_list = new ArrayList<Img>();
			for(int i=0;i<key.size();i++){
				Img img = new Img();
				System.out.println(key.size());
				img.setKey(key.get(i));
				img.setObject_id(id);
				img_list.add(img);
			}
			postMapper.img_Submit(img_list);
		}
		return "success";
	}

	@Override
	public String post_Delete(Integer post_id){
		List<Integer> hid_list = postMapper.getReplies_hid(post_id);
		if(hid_list.size()!=0){
    		List<Integer> big_hidlist = repliesMapper.getReplies_hid(hid_list);
    		repliesMapper.replies_Delete(big_hidlist);
    		repliesMapper.replies_Delete(hid_list);
		}
		postMapper.img_Delete(post_id);
		postMapper.post_Delete(post_id);
		return "success";
	}
}

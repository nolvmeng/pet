package com.pet.pojo;

import java.util.Date;
import java.util.Set;


public class Post {
	private int post_id;
	private int author;
	private Date ts;
	private String type;
	private String title;
	private String context;
	private String tag;
	private Set<Img> img;
	private Set<Replies> replies;
	

	public Set<Replies> getReplies() {
		return replies;
	}
	public void setReplies(Set<Replies> replies) {
		this.replies = replies;
	}
	public Set<Img> getImg() {
		return img;
	}
	public void setImg(Set<Img> img) {
		this.img = img;
	}
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public int getAuthor() {
		return author;
	}
	public void setAuthor(int author) {
		this.author = author;
	}
	public Date getTs() {
		return ts;
	}
	public void setTs(Date ts) {
		this.ts = ts;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}

}

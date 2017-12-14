package com.pet.pojo;
import java.util.Date;

public class Post {
	private int post_id;//文章编号
	private int author;
	private Date ts;//时间
	private String type;
	private String title;
	private String context;//内容
	private String tag;//标签
	/**
	 * @return the post_id
	 */
	public int getPost_id() {
		return post_id;
	}
	/**
	 * @param post_id the post_id to set
	 */
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	/**
	 * @return the author
	 */
	public int getAuthor() {
		return author;
	}
	/**
	 * @param author the author to set
	 */
	public void setAuthor(int author) {
		this.author = author;
	}
	/**
	 * @return the ts
	 */
	public Date getTs() {
		return ts;
	}
	/**
	 * @param ts the ts to set
	 */
	public void setTs(Date ts) {
		this.ts = ts;
	}
	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the context
	 */
	public String getContext() {
		return context;
	}
	/**
	 * @param context the context to set
	 */
	public void setContext(String context) {
		this.context = context;
	}
	/**
	 * @return the tag
	 */
	public String getTag() {
		return tag;
	}
	/**
	 * @param tag the tag to set
	 */
	public void setTag(String tag) {
		this.tag = tag;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Post [post_id=" + post_id + ", author=" + author + ", ts=" + ts
				+ ", type=" + type + ", title=" + title + ", context="
				+ context + ", tag=" + tag + "]";
	}
	
}

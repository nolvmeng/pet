package com.pet.pojo;

import java.util.Date;

public class Replies {
	private int h_id;//回帖编号
	private int post_id;
	private int r_id;//回帖的回帖编号
	private Date ts;
	private String context;
	/**
	 * @return the h_id
	 */
	public int getH_id() {
		return h_id;
	}
	/**
	 * @param h_id the h_id to set
	 */
	public void setH_id(int h_id) {
		this.h_id = h_id;
	}
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
	 * @return the r_id
	 */
	public int getR_id() {
		return r_id;
	}
	/**
	 * @param r_id the r_id to set
	 */
	public void setR_id(int r_id) {
		this.r_id = r_id;
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
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Replies [h_id=" + h_id + ", post_id=" + post_id + ", r_id="
				+ r_id + ", ts=" + ts + ", context=" + context + "]";
	}
	
}


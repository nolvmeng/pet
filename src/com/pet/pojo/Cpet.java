package com.pet.pojo;

import java.util.Date;

public class Cpet {
	private int c_id;
	private String nickname;
	private String category;
	private String type;
	private String desc;//描述
	private Date ts;//发现时间
	private String from;//来源
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Date getTs() {
		return ts;
	}
	public void setTs(Date ts) {
		this.ts = ts;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Cpet [c_id=" + c_id + ", nickname=" + nickname + ", category="
				+ category + ", type=" + type + ", desc=" + desc + ", ts=" + ts
				+ ", from=" + from + "]";
	}
	
}

package com.pet.pojo;

import java.util.Date;

public class User {
	private int u_id;
	private String user_name;
	private String email;
	private String user_pwd;
	private Date user_reg_date;//注册时间
	private int user_status;//用户状态
	private int role;//角色
	private String user_activationKey;//激活key
	private String user_avatar;//用户头像
	private String user_desc;//用户描述
	private String resetPwdKey;//重置key
	
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public Date getUser_reg_date() {
		return user_reg_date;
	}
	public void setUser_reg_date(Date user_reg_date) {
		this.user_reg_date = user_reg_date;
	}
	public int getUser_status() {
		return user_status;
	}
	public void setUser_status(int user_status) {
		this.user_status = user_status;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public String getUser_activationKey() {
		return user_activationKey;
	}
	public void setUser_activationKey(String user_activationKey) {
		this.user_activationKey = user_activationKey;
	}
	public String getUser_avatar() {
		return user_avatar;
	}
	public void setUser_avatar(String user_avatar) {
		this.user_avatar = user_avatar;
	}
	public String getUser_desc() {
		return user_desc;
	}
	public void setUser_desc(String user_desc) {
		this.user_desc = user_desc;
	}
	public String getResetPwdKey() {
		return resetPwdKey;
	}
	public void setResetPwdKey(String resetPwdKey) {
		this.resetPwdKey = resetPwdKey;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", user_name=" + user_name + ", email="
				+ email + ", user_pwd=" + user_pwd + ", user_reg_date="
				+ user_reg_date + ", user_status=" + user_status + ", role="
				+ role + ", user_activationKey=" + user_activationKey
				+ ", user_avatar=" + user_avatar + ", user_desc=" + user_desc
				+ ", resetPwdKey=" + resetPwdKey + "]";
	}
	
	
}
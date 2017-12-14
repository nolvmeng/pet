package com.pet.pojo;

import java.util.Date;

public class Regist {

	private int r_id;
	private int u_id;//用户id
	private int c_id;//宠物id
	private Date ts;//登记时间
	private String status;//登记状态
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public Date getTs() {
		return ts;
	}
	public void setTs(Date ts) {
		this.ts = ts;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Regist [r_id=" + r_id + ", u_id=" + u_id + ", c_id=" + c_id
				+ ", ts=" + ts + ", status=" + status + "]";
	}
	
}

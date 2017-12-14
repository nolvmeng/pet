package com.pet.pojo;

import java.util.Date;

public class Adopt {
	private int a_id;
	private int r_id;//宠物登记id
	private int adopter;//领养人
	private Date ts;
	/**
	 * @return the a_id
	 */
	public int getA_id() {
		return a_id;
	}
	/**
	 * @param a_id the a_id to set
	 */
	public void setA_id(int a_id) {
		this.a_id = a_id;
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
	 * @return the adopter
	 */
	public int getAdopter() {
		return adopter;
	}
	/**
	 * @param adopter the adopter to set
	 */
	public void setAdopter(int adopter) {
		this.adopter = adopter;
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
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Adopt [a_id=" + a_id + ", r_id=" + r_id + ", adopter="
				+ adopter + ", ts=" + ts + "]";
	}
	
	
}

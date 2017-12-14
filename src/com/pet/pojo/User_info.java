package com.pet.pojo;

public class User_info {
	private int u_id;
	private String realName;
	private String bri_date;
	private int sex;
	private String phone;
	private String province;
	private String city;
	private String address;
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getBri_date() {
		return bri_date;
	}
	public void setBri_date(String bri_date) {
		this.bri_date = bri_date;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User_info [u_id=" + u_id + ", realName=" + realName
				+ ", bri_date=" + bri_date + ", sex=" + sex + ", phone="
				+ phone + ", province=" + province + ", city=" + city
				+ ", address=" + address + "]";
	}
	
}

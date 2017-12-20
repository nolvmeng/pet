package com.pet.pojo;

public class Img {
	private int img_id;
	private String key;
	private int object_id;//目标id
	private String desc;
	/**
	 * @return the img_id
	 */
	public int getImg_id() {
		return img_id;
	}
	/**
	 * @param img_id the img_id to set
	 */
	public void setImg_id(int img_id) {
		this.img_id = img_id;
	}
	/**
	 * @return the key
	 */
	public String getKey() {
		return key;
	}
	/**
	 * @param key the key to set
	 */
	public void setKey(String key) {
		this.key = key;
	}
	
	
	public int getObject_id() {
		return object_id;
	}
	public void setObject_id(int object_id) {
		this.object_id = object_id;
	}
	/**
	 * @return the desc
	 */
	public String getDesc() {
		return desc;
	}
	/**
	 * @param desc the desc to set
	 */
	public void setDesc(String desc) {
		this.desc = desc;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Img [img_id=" + img_id + ", key=" + key + ", object_id="
				+ object_id + ", desc=" + desc + "]";
	}
	
	
}

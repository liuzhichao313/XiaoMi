package com.demo.bean;

public class UserInfo {
	private int id;
	private String name;
	private String phone;
	private String diZhi;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDiZhi() {
		return diZhi;
	}
	public void setDiZhi(String diZhi) {
		this.diZhi = diZhi;
	}
	public UserInfo(int id, String name, String phone, String diZhi) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.diZhi = diZhi;
	}
	public UserInfo(String name, String phone, String diZhi) {
		super();
		this.name = name;
		this.phone = phone;
		this.diZhi = diZhi;
	}
	public UserInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", name=" + name + ", phone=" + phone
				+ ", diZhi=" + diZhi + "]";
	}
	
	
	
	
	
	
}

package com.demo.bean;

public class User {
	private String id;
	private String name;
	private String tel;
	private String nickname;
	private String pwd;
	private String email;
	private boolean gender;// true:male false:female
	private byte zjlx;// 1
	private String hobby;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public byte getZjlx() {
		return zjlx;
	}

	public void setZjlx(byte zjlx) {
		this.zjlx = zjlx;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", tel=" + tel
				+ ", nickname=" + nickname + ", pwd=" + pwd + ", email="
				+ email + ", gender=" + gender + ", zjlx=" + zjlx + ", hobby="
				+ hobby + "]";
	}

	public User(String name, String tel, String nickname, String pwd,
			String email, boolean gender, byte zjlx, String hobby) {
		super();
		this.name = name;
		this.tel = tel;
		this.nickname = nickname;
		this.pwd = pwd;
		this.email = email;
		this.gender = gender;
		this.zjlx = zjlx;
		this.hobby = hobby;
	}

	public User(String id, String name, String tel, String nickname,
			String pwd, String email, boolean gender, byte zjlx, String hobby) {
		super();
		this.id = id;
		this.name = name;
		this.tel = tel;
		this.nickname = nickname;
		this.pwd = pwd;
		this.email = email;
		this.gender = gender;
		this.zjlx = zjlx;
		this.hobby = hobby;
	}

	public User() {
		super();
	}

}

package com.demo.bean;

public class Goods {
	private int id;
	private String name;
	private String img;
	private String price;
	private String addr;
	private String baoXiuQi;
	private String miaoShu;
	private int jiFen;
	private String level;
	private int categoryId;

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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getBaoXiuQi() {
		return baoXiuQi;
	}

	public void setBaoXiuQi(String baoXiuQi) {
		this.baoXiuQi = baoXiuQi;
	}

	public String getMiaoShu() {
		return miaoShu;
	}

	public void setMiaoShu(String miaoShu) {
		this.miaoShu = miaoShu;
	}

	public int getJiFen() {
		return jiFen;
	}

	public void setJiFen(int jiFen) {
		this.jiFen = jiFen;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", img=" + img
				+ ", price=" + price + ", addr=" + addr + ", baoXiuQi="
				+ baoXiuQi + ", miaoShu=" + miaoShu + ", jiFen=" + jiFen
				+ ", level=" + level + ", categoryId=" + categoryId + "]";
	}

	public Goods(String name, String img, String price, String addr,
			String baoXiuQi, String miaoShu, int jiFen, String level,
			int categoryId) {
		super();
		this.name = name;
		this.img = img;
		this.price = price;
		this.addr = addr;
		this.baoXiuQi = baoXiuQi;
		this.miaoShu = miaoShu;
		this.jiFen = jiFen;
		this.level = level;
		this.categoryId = categoryId;
	}

	public Goods(int id, String name, String img, String price, String addr,
			String baoXiuQi, String miaoShu, int jiFen, String level,
			int categoryId) {
		super();
		this.id = id;
		this.name = name;
		this.img = img;
		this.price = price;
		this.addr = addr;
		this.baoXiuQi = baoXiuQi;
		this.miaoShu = miaoShu;
		this.jiFen = jiFen;
		this.level = level;
		this.categoryId = categoryId;
	}

	public Goods() {
		super();
	}

}

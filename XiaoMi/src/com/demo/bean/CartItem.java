package com.demo.bean;

public class CartItem {
	private Goods goods;
	private int amount;
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public CartItem(Goods goods, int amount) {
		super();
		this.goods = goods;
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "CartItem [goods=" + goods + ", amount=" + amount + "]";
	}

	
}

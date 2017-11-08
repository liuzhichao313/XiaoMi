package com.demo.util;

import java.util.ArrayList;
import java.util.List;

public class PageBean<T> {
	private int pageNum = 1; // 当前显示的页码
	private int totalPages = 1; // 总页数
	private int pageSize = Constant.PAGE_SIZE; // 每页记录数
	private int totalRecords = 0; // 总记录数
	private boolean havePrePage = false; // 是否有上一页
	private boolean haveNextPage = false; // 是否有下一页
	private List<T> pageDatas = new ArrayList<T>();//每页显示的数据
	
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getTotalPages() {
		return totalPages;
	}

	public int getTotalRecords() {
		return totalRecords;
	}
	public void setTotalRecords(int totalRecords) {//设置一共有多少条记录
		this.totalRecords = totalRecords;
		this.totalPages = totalRecords % pageSize ==0 ? totalRecords / pageSize : totalRecords / pageSize +1;
	}
	public boolean isHavePrePage() {//判断是否有上一页
		if(this.pageNum>1)
			return true;
		else 
			return false;
	}

	public boolean isHaveNextPage() {//判断是否有下一页
		if(this.pageNum <this.totalPages)
			return true;
		else
			return false;
	}

	public List<T> getPageDatas() {
		return pageDatas;
	}
	public void setPageDatas(List<T> pageDatas) {
		this.pageDatas = pageDatas;
	}
	
}
package com.demo.util;

import java.util.ArrayList;
import java.util.List;

public class PageBean<T> {
	private int pageNum = 1; // ��ǰ��ʾ��ҳ��
	private int totalPages = 1; // ��ҳ��
	private int pageSize = Constant.PAGE_SIZE; // ÿҳ��¼��
	private int totalRecords = 0; // �ܼ�¼��
	private boolean havePrePage = false; // �Ƿ�����һҳ
	private boolean haveNextPage = false; // �Ƿ�����һҳ
	private List<T> pageDatas = new ArrayList<T>();//ÿҳ��ʾ������
	
	
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
	public void setTotalRecords(int totalRecords) {//����һ���ж�������¼
		this.totalRecords = totalRecords;
		this.totalPages = totalRecords % pageSize ==0 ? totalRecords / pageSize : totalRecords / pageSize +1;
	}
	public boolean isHavePrePage() {//�ж��Ƿ�����һҳ
		if(this.pageNum>1)
			return true;
		else 
			return false;
	}

	public boolean isHaveNextPage() {//�ж��Ƿ�����һҳ
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
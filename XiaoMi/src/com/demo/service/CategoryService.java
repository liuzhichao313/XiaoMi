package com.demo.service;

import java.sql.SQLException;
import java.util.List;

import com.demo.bean.Category;
import com.demo.bean.Goods;

public interface CategoryService {
	List<Category> getAllCategories() throws SQLException;

	/**
	 * �������idΪcategoryId����pageNumҳ������
	 * 
	 * @param categoryId
	 * @param pageNum
	 * @return
	 */
	List<Goods> getGoodsByCategoryId(int categoryId, int pageNum) throws SQLException;

}

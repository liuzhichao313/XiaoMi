package com.demo.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.demo.bean.Category;
import com.demo.bean.Goods;
import com.demo.dao.CategoryDao;
import com.demo.dao.impl.CategoryDaoImpl;
import com.demo.service.CategoryService;

public class CategoryServiceImpl implements CategoryService{

	private CategoryDao categoryDao = new CategoryDaoImpl();
	
	@Override
	public List<Category> getAllCategories() throws SQLException {

		return categoryDao.selectAllCateories();
	}

	@Override
	public List<Goods> getGoodsByCategoryId(int categoryId, int pageNum) throws SQLException{
		return categoryDao.selectGoodsByCategoryId(categoryId,pageNum);
	}

}

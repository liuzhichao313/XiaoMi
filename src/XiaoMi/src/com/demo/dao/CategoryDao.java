package com.demo.dao;

import java.sql.SQLException;
import java.util.List;

import com.demo.bean.Category;
import com.demo.bean.Goods;

public interface CategoryDao {
	List<Category> selectAllCateories() throws SQLException ;

	List<Goods> selectGoodsByCategoryId(int categoryId, int pageNum)throws SQLException;
}

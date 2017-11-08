package com.demo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;

import com.demo.bean.Category;
import com.demo.bean.Goods;
import com.demo.dao.CategoryDao;
import com.demo.util.Constant;
import com.demo.util.JDBCTool;

public class CategoryDaoImpl implements CategoryDao{

	@Override
	public List<Category> selectAllCateories() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select id ,name from tb_category order by level desc";
		return queryRunner.query(sql, new BeanListHandler<Category>(Category.class));
	}

	@Override
	public List<Goods> selectGoodsByCategoryId(int categoryId, int pageNum) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select * from tb_goods where categoryId = ? order by level desc limit ?,?";
		return queryRunner.query(sql, new BeanListHandler<Goods>(Goods.class),categoryId,(pageNum-1)*Constant.PAGE_SIZE,Constant.PAGE_SIZE);
	}

}

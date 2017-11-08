package com.demo.dao;

import java.sql.SQLException;
import java.util.List;

import com.demo.bean.Goods;

public interface GoodsDao {
	int insertGoods(Goods goods)throws SQLException;

	/**
	 * 分页查询出商品
	 * 
	 * @param amount
	 * @return
	 */
	List<Goods> selectGoods(int pageNum)throws SQLException;

	/**
	 * 查询一共有多少条记录
	 * @return
	 * @throws SQLException
	 */
	long selectTotalRecords()throws SQLException;
	
	List<Goods> selectGoodsByCategory(int categoryId,int pageNum)throws SQLException;

	Goods selectGoodsDetail(int goodsId)throws SQLException;

	long selectGoodsAmountByCategoryId(int categoryId) throws SQLException;
	
	long selectGoodsAmountByGoodsName(String name) throws SQLException;
	
	List<Goods> selectGoodsByGoodsName(String name,int pageNum) throws SQLException;
	
	Goods selectGoodsById(int goodsId)throws SQLException;//暂时没用上
}

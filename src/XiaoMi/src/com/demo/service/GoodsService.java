package com.demo.service;

import java.sql.SQLException;
import java.util.List;

import com.demo.bean.Goods;

public interface GoodsService {
	int addGoods(Goods goods) throws SQLException;

	List<Goods> getAllGoodsWidthPage(int pageNum) throws SQLException;

	long getTotalRecords() throws SQLException;

	long getTotalRecordsByCategoryId(int categoryId)throws SQLException ;
	

	List<Goods> getGoodsByName(String name,int pageNum) throws SQLException;
	
	long getGoodsAmountByGoodsName(String name) throws SQLException;
	
	Goods getGoodsById(int goodsId)throws SQLException;//暂时没用上
}

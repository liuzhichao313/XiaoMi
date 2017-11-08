package com.demo.dao;

import java.sql.SQLException;
import java.util.List;

import com.demo.bean.Goods;

public interface GoodsDao {
	int insertGoods(Goods goods)throws SQLException;

	/**
	 * ��ҳ��ѯ����Ʒ
	 * 
	 * @param amount
	 * @return
	 */
	List<Goods> selectGoods(int pageNum)throws SQLException;

	/**
	 * ��ѯһ���ж�������¼
	 * @return
	 * @throws SQLException
	 */
	long selectTotalRecords()throws SQLException;
	
	List<Goods> selectGoodsByCategory(int categoryId,int pageNum)throws SQLException;

	Goods selectGoodsDetail(int goodsId)throws SQLException;

	long selectGoodsAmountByCategoryId(int categoryId) throws SQLException;
	
	long selectGoodsAmountByGoodsName(String name) throws SQLException;
	
	List<Goods> selectGoodsByGoodsName(String name,int pageNum) throws SQLException;
	
	Goods selectGoodsById(int goodsId)throws SQLException;//��ʱû����
}

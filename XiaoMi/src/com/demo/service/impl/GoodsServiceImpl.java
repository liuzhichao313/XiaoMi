package com.demo.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.demo.bean.Goods;
import com.demo.dao.GoodsDao;
import com.demo.dao.impl.GoodsDaoImpl;
import com.demo.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {

	private GoodsDao goodsDao = new GoodsDaoImpl();
	
	@Override
	public int addGoods(Goods goods) throws SQLException {
		return goodsDao.insertGoods(goods);
	}

	@Override
	public List<Goods> getAllGoodsWidthPage(int pageNum) throws SQLException {
		return goodsDao.selectGoods(pageNum);
	}

	@Override
	public long getTotalRecords() throws SQLException {
		return goodsDao.selectTotalRecords();
	}

	@Override
	public long getTotalRecordsByCategoryId(int categoryId)throws SQLException {
		return goodsDao.selectGoodsAmountByCategoryId(categoryId) ;
	}

	@Override
	public List<Goods> getGoodsByName(String name,int pageNum)
			throws SQLException {
		return goodsDao.selectGoodsByGoodsName(name, pageNum);
	}

	@Override
	public long getGoodsAmountByGoodsName(String name) throws SQLException {
		return goodsDao.selectGoodsAmountByGoodsName(name);
	}

	@Override
	public Goods getGoodsById(int goodsId) throws SQLException {//暂时没用上
		return goodsDao.selectGoodsById(goodsId);
	}

}

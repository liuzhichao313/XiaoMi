package com.demo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.demo.bean.Goods;
import com.demo.dao.GoodsDao;
import com.demo.util.Constant;
import com.demo.util.JDBCTool;

public class GoodsDaoImpl implements GoodsDao {

	@Override
	public int insertGoods(Goods goods) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "insert into tb_goods values (null,?,?,?,?,?,?,?,?,?)";
		Object[] params = { goods.getName(), goods.getImg(), goods.getPrice(),
				goods.getAddr(), goods.getBaoXiuQi(), goods.getMiaoShu(),goods.getJiFen(),
				goods.getLevel(), goods.getCategoryId() };
		return queryRunner.update(sql, params);
	}

	@Override
	public List<Goods> selectGoods(int pageNum) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select * from tb_goods order by level desc limit ?,?";
		return queryRunner.query(sql, new BeanListHandler<Goods>(Goods.class),
				Constant.PAGE_SIZE * (pageNum - 1), Constant.PAGE_SIZE);
	}

	@Override
	public List<Goods> selectGoodsByCategory(int categoryId, int pageNum)
			throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select * from tb_goods where categoryId = ? order by level asc limit ?,?";
		return queryRunner.query(sql, new BeanListHandler<Goods>(Goods.class),
				categoryId, Constant.PAGE_SIZE * (pageNum - 1),
				Constant.PAGE_SIZE);
	}

	@Override
	public Goods selectGoodsDetail(int goodsId) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select * from tb_goods where id = ?";
		return queryRunner.query(sql, new BeanHandler<Goods>(Goods.class),
				goodsId);
	}

	@Override
	public long selectTotalRecords() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select count(*) from tb_goods";
		return queryRunner.query(sql, new ScalarHandler<Long>(1));
	}

	@Override
	public long selectGoodsAmountByCategoryId(int categoryId) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select count(*) from tb_goods where categoryId = ?";
		return queryRunner.query(sql, new ScalarHandler<Long>(1),categoryId);
	}

	@Override
	public List<Goods> selectGoodsByGoodsName(String name,int pageNum)
			throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select * from tb_goods where name like ? order by level desc limit ?,?";
		return queryRunner.query(sql, new BeanListHandler<Goods>(Goods.class),
				"%"+name+"%",Constant.PAGE_SIZE * (pageNum - 1),
				Constant.PAGE_SIZE);
	}

	@Override
	public long selectGoodsAmountByGoodsName(String name) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select count(*) from tb_goods where name like ?";
		return queryRunner.query(sql, new ScalarHandler<Long>(1),"%"+name+"%");
	}

	@Override
	public Goods selectGoodsById(int goodsId) throws SQLException {//暂时没用上
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select * from tb_goods where id = ?";
		return queryRunner.query(sql, new BeanHandler<Goods>(Goods.class),goodsId);
	}
	
	/*
	public static void main(String[] args) throws SQLException {
		GoodsDaoImpl goodsDaoImpl = new GoodsDaoImpl();
		List<Goods> res = goodsDaoImpl.selectGoodsByGoodsName("小米");
		res.forEach(i -> System.out.println(i));
	}
	*/
	
	/*
	public static void main(String[] args) throws SQLException{
		GoodsDaoImpl goodsDaoImpl = new GoodsDaoImpl();
		long res = goodsDaoImpl.selectGoodsAmountByGoodaName("耳机");
		System.out.println(res);
	}
	*/

}

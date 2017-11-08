package com.demo.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.demo.bean.User;
import com.demo.bean.UserInfo;
import com.demo.dao.UserInfoDao;
import com.demo.util.JDBCTool;

public class UserInfoDaoImpl implements UserInfoDao{

	@Override
	public int insertUserInfo(UserInfo userInfo) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		Object[] params = { userInfo.getId(), userInfo.getName(), userInfo.getPhone(),
				userInfo.getDiZhi()};
		return queryRunner.update(
				"insert into tb_userinfo values(?,?,?,?)", params);
	}

	@Override
	public UserInfo selectInfoByName(String name) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select * from tb_userinfo where name=?";
		return queryRunner.query(sql, new BeanHandler<UserInfo>(UserInfo.class), name);
	}

}

package com.demo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.demo.bean.User;
import com.demo.dao.UserDao;
import com.demo.util.JDBCTool;

public class UserDaoImpl implements UserDao {

	@Override
	public int insertUser(User user) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		Object[] params = { user.getId(), user.getName(), user.getTel(),
				user.getNickname(), user.getPwd(), user.getEmail(),
				user.isGender(), user.getZjlx(), user.getHobby() };
		return queryRunner.update(
				"insert into tb_user values(?,?,?,?,?,?,?,?,?)", params);
	}

	@Override
	public long selectUserByName(String name) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select count(*) from tb_user where name = ?";
		Long res = queryRunner.query(sql, new ScalarHandler<Long>(1), name);
		return res;
	}

	@Override
	public List<User> selectAllUsers() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select * from tb_user";
		return queryRunner.query(sql, new BeanListHandler<User>(User.class));
	}

	@Override
	public User selectUserByNameAndPwd(String name, String pwd) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select * from tb_user where name=? and pwd=?";
		return queryRunner.query(sql, new BeanHandler<User>(User.class), name,pwd);
	}

	@Override
	public User selectUserByUserName(String name) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCTool.getDataSource());
		String sql = "select * from tb_user where name=?";
		return queryRunner.query(sql, new BeanHandler<User>(User.class), name);
	}

}

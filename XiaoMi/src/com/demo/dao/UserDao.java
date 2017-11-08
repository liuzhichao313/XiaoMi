package com.demo.dao;

import java.sql.SQLException;
import java.util.List;

import com.demo.bean.User;

public interface UserDao {
	public int insertUser(User user) throws SQLException;

	/**
	 * 查找指定名称的用户是否存在
	 * 
	 * @param name
	 * @return 返回1表示存在；返回0表示不存在
	 * @throws SQLException
	 */
	public long selectUserByName(String name) throws SQLException;

	public List<User> selectAllUsers() throws SQLException;
	
	public User selectUserByNameAndPwd(String name, String pwd)
			throws SQLException;
	
	public User selectUserByUserName(String name) throws SQLException;

}

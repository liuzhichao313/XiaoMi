package com.demo.dao;

import java.sql.SQLException;
import java.util.List;

import com.demo.bean.User;

public interface UserDao {
	public int insertUser(User user) throws SQLException;

	/**
	 * ����ָ�����Ƶ��û��Ƿ����
	 * 
	 * @param name
	 * @return ����1��ʾ���ڣ�����0��ʾ������
	 * @throws SQLException
	 */
	public long selectUserByName(String name) throws SQLException;

	public List<User> selectAllUsers() throws SQLException;
	
	public User selectUserByNameAndPwd(String name, String pwd)
			throws SQLException;
	
	public User selectUserByUserName(String name) throws SQLException;

}

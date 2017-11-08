package com.demo.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.demo.bean.User;
import com.demo.dao.UserDao;
import com.demo.dao.impl.UserDaoImpl;
import com.demo.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao userDao = new UserDaoImpl();

	@Override
	public int userRegist(User user) throws SQLException {
		return userDao.insertUser(user);
	}

	@Override
	public boolean getUserByName(String name) throws SQLException {
		return userDao.selectUserByName(name) == 1 ? true : false;
	}

	@Override
	public List<User> getAllUsers() throws SQLException {
		return userDao.selectAllUsers();
	}

	@Override
	public User userLogin(String name, String pwd) throws SQLException {
		return userDao.selectUserByNameAndPwd(name, pwd);
	}

	@Override
	public User getUserByUserName(String name) throws SQLException {
		return userDao.selectUserByUserName(name);
	}

}

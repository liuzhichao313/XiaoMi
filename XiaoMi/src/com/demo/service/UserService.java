package com.demo.service;

import java.sql.SQLException;
import java.util.List;

import com.demo.bean.User;

public interface UserService {
	public int userRegist(User user) throws SQLException;

	public boolean getUserByName(String name) throws SQLException;

	public List<User> getAllUsers() throws SQLException;
	
	public User userLogin(String name,String pwd) throws SQLException;
	
	public User getUserByUserName(String name) throws SQLException;
}

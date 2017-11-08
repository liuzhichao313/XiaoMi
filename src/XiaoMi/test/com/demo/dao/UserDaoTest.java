package com.demo.dao;

import java.sql.SQLException;

import org.junit.Test;

import com.demo.bean.User;
import com.demo.dao.impl.UserDaoImpl;

public class UserDaoTest {

	@Test
	public void testInsertUser(){
		User user= new User("fdsafdsa", "aa", "23144", "AAA", "1234", "sth@126.com", true, (byte)1, "eat,play");
		UserDao userDao = new UserDaoImpl();
		try {
			int res = userDao.insertUser(user);
			System.out.println(res);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void testSelectUserByName(){
		UserDao userDao = new UserDaoImpl();
		try {
			long res = userDao.selectUserByName("aaa");
			System.out.println(res);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
}

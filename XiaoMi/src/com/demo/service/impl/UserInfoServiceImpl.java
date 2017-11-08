package com.demo.service.impl;

import java.sql.SQLException;

import com.demo.bean.UserInfo;
import com.demo.dao.UserInfoDao;
import com.demo.dao.impl.UserInfoDaoImpl;
import com.demo.service.UserInfoService;

public class UserInfoServiceImpl implements UserInfoService{

	private UserInfoDao userInfoDao = new UserInfoDaoImpl();
	
	@Override
	public int userInfo(UserInfo userInfo) throws SQLException {
		return userInfoDao.insertUserInfo(userInfo);
	}

	@Override
	public UserInfo getUserInfoByName(String name) throws SQLException {
		return userInfoDao.selectInfoByName(name);
	}
	
}

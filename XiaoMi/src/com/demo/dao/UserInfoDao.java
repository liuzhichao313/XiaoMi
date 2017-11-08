package com.demo.dao;

import java.sql.SQLException;
import com.demo.bean.UserInfo;

public interface UserInfoDao {
	public int insertUserInfo(UserInfo userInfo) throws SQLException;
	
	public UserInfo selectInfoByName(String name) throws SQLException;

}

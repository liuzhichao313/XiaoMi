package com.demo.service;

import java.sql.SQLException;
import com.demo.bean.UserInfo;

public interface UserInfoService {
	public int userInfo(UserInfo userInfo) throws SQLException;
	
	public UserInfo getUserInfoByName(String name) throws SQLException;
}

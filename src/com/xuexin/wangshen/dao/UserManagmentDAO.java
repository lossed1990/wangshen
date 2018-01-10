package com.xuexin.wangshen.dao;

import com.xuexin.wangshen.model.pojo.UserInfoDO;

public interface UserManagmentDAO {

	/*
	 * 插入用户信息
	 */
	int saveUser(UserInfoDO user);
}

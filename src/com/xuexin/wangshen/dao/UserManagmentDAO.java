package com.xuexin.wangshen.dao;

import org.apache.ibatis.annotations.Param;

import com.xuexin.wangshen.model.pojo.UserInfoDO;

public interface UserManagmentDAO {

	/*
	 * 插入用户信息
	 */
	int saveUser(UserInfoDO user);
	
	/*
	 * 获取用户计数
	 */
	int countUserByPhoneNumber(String strUserPhoneNumber);
	
	/*
	 * 通过用户号码密码获取用户
	 */
	UserInfoDO getUserInfoByPhoneAndPass(@Param(value="strPhone")String strPhone, @Param(value="strPass")String strPass);
}
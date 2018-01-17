package com.xuexin.wangshen.service;

import com.xuexin.wangshen.model.pojo.AdminUserLoginInputFormDTO;
import com.xuexin.wangshen.model.pojo.UserInfoDO;
import com.xuexin.wangshen.model.pojo.UserInfoInputFormDTO;
import com.xuexin.wangshen.model.pojo.UserLoginInputFormDTO;

//用户信息服务
public interface UserInfoService {

	/*
	 * 保存用户信息，用户注册
	 */
	int saveUserInfo(UserInfoInputFormDTO userInput);
	
	/*
	 * 用户信息计数，用户注册时验证用户是否已经注册
	 */
	int countUserByPhone(String strPhone);
	
	/*
	 * 通过手机号和密码获取用户信息，用于普通用户验证
	 */
	UserInfoDO getUserInfo(UserLoginInputFormDTO user);
	
	/*
	 * 通过用户名密码获取用户信息，用于管理员登陆
	 */
	UserInfoDO getAdminInfo(AdminUserLoginInputFormDTO admin);
}

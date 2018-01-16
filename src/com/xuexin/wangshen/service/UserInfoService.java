package com.xuexin.wangshen.service;

import com.xuexin.wangshen.model.pojo.UserInfoDO;
import com.xuexin.wangshen.model.pojo.UserInfoInputFormDTO;
import com.xuexin.wangshen.model.pojo.UserLoginInputFormDTO;

//用户信息服务
public interface UserInfoService {

	int saveUserInfo(UserInfoInputFormDTO userInput);			//保存用户信息
	int countUserByPhone(String strPhone);						//用户号码计数
	UserInfoDO getUserInfo(UserLoginInputFormDTO user);			//获取用户信息
}

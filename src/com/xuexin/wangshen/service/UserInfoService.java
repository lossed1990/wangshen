package com.xuexin.wangshen.service;

import com.xuexin.wangshen.model.pojo.UserInfoInputFormDTO;

//用户信息服务
public interface UserInfoService {

	int saveUserInfo(UserInfoInputFormDTO userInput);			//保存用户信息
}

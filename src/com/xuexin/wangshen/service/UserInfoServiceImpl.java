package com.xuexin.wangshen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xuexin.wangshen.dao.UserManagmentDAO;
import com.xuexin.wangshen.model.pojo.UserInfoInputFormDTO;
import com.xuexin.wangshen.util.ErrorDefines;

@Service("userService")
public class UserInfoServiceImpl implements UserInfoService {
	
	@Resource
	private UserManagmentDAO dao_userinfo; 
	
	@Override
	public int saveUserInfo(UserInfoInputFormDTO userInput) {

		//TODO: 

		return ErrorDefines.E_OK;
	}
}

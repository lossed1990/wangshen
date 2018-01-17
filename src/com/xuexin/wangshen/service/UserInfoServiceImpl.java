package com.xuexin.wangshen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xuexin.wangshen.dao.UserManagmentDAO;
import com.xuexin.wangshen.model.pojo.AdminUserLoginInputFormDTO;
import com.xuexin.wangshen.model.pojo.UserInfoDO;
import com.xuexin.wangshen.model.pojo.UserInfoInputFormDTO;
import com.xuexin.wangshen.model.pojo.UserLoginInputFormDTO;
import com.xuexin.wangshen.util.ErrorDefines;

@Service("userService")
@Transactional
public class UserInfoServiceImpl implements UserInfoService {
	
	@Resource
	private UserManagmentDAO dao_userinfo; 
	
	@Override
	public int saveUserInfo(UserInfoInputFormDTO userInput) {

		UserInfoDO userdo = new UserInfoDO();
		
		userdo.setStrMobileNum(userInput.getPhonenumber());
		userdo.setStrPassHash(userInput.getPassword());
		
		dao_userinfo.saveUser(userdo);
		
		int nUserCount = dao_userinfo.countUserByPhoneNumber(userdo.getStrMobileNum());
		
		//用户重复
		if(nUserCount > 1)	{
			//使用mybatis事物自动回滚
			throw new RuntimeException(Integer.toHexString(ErrorDefines.E_SVR_USER_DUMPLICATE));
		}

		return ErrorDefines.E_OK;
	}

	@Override
	public int countUserByPhone(String strPhone) {

		//直接调用DAO，用户号码必须唯一
		return dao_userinfo.countUserByPhoneNumber(strPhone);
	}

	@Override
	public UserInfoDO getUserInfo(UserLoginInputFormDTO user) {

		//直接调用DAO，不匹配则返回null
		return dao_userinfo.getUserInfoByPhoneAndPass(user.getPhonenumber(), user.getPassword());
	}

	@Override
	public UserInfoDO getAdminInfo(AdminUserLoginInputFormDTO admin) {

		//直接调用DAO，不匹配则返回null
		return dao_userinfo.getAdminInfoByUserAndPass(admin.getAdminuser(), admin.getPassword());
	}
}

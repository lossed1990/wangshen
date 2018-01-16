package com.xuexin.wangshen.service.test;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xuexin.wangshen.model.pojo.UserInfoInputFormDTO;
import com.xuexin.wangshen.service.UserInfoService;
import com.xuexin.wangshen.util.ErrorDefines;

/*
 * 用户服务测试类
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:WebRoot/WEB-INF/applicationContext.xml" })
public class UserInfoServiceTest {

	@Resource(name="userService")
	private UserInfoService user_service;
	
	@Test
	public void testSaveUserInfo() {
		
		UserInfoInputFormDTO userInput = new UserInfoInputFormDTO();
		
		userInput.setPhonenumber("15921614832");
		userInput.setPhonevalidate("3345");
		userInput.setPassword("abcdefg");
		userInput.setConfirmPassword("abcdefg");
		
		assertEquals(user_service.saveUserInfo(userInput), ErrorDefines.E_OK);
	}

}

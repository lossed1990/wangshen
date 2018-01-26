package com.xuexin.wangshen.dao.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.xuexin.wangshen.dao.UserManagmentDAO;
import com.xuexin.wangshen.model.pojo.UserInfoDO;


/*
 * 模板操走DAO操作测试类
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:WebRoot/WEB-INF/applicationContext.xml" })
@Transactional
public class UserManagmentDAOTest {
	
	@Autowired
	private UserManagmentDAO userDAO;

	@Test
	public void testSaveUser() {
		
		UserInfoDO user = new UserInfoDO();
		user.setStrMobileNum("15921614832");
		user.setStrPassHash("XXXXXXXXX");
		try {
			assertEquals(userDAO.saveUser(user), 1);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	@Test
	public void testCountUserByPhoneNumber() {
		
		try {
			assertEquals(userDAO.countUserByPhoneNumber("15921614832"), 1);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}

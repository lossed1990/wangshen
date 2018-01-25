package com.xuexin.wangshen.service.test;

import static org.junit.Assert.*;

import java.util.List;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
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
		
    	String strJSON = "{\"key1\":\"value1\",\"key2_array\":[{\"arra_key1\":1,\"arra_key2\":2,\"sub_array_key\":[{\"sss_key\":\"f1\",\"sss_key2\":22},{\"sss_key\":\"f2\",\"sss_key2\":33}]},{\"arra_key1\":2,\"arra_key2\":4,\"sub_array_key\":[{\"sss_key\":\"f3\",\"sss_key2\":44},{\"sss_key\":\"f4\",\"sss_key2\":55}]}],\"key3\":{\"key_obj1\":\"value3\",\"key_obj2\":2}}";   	
        JSONObject jsonObj = JSON.parseObject(strJSON);
        
        Object a = JSONPath.eval(jsonObj, "$.key2_array.sub_array_key.sss_key2");
        System.out.println("===> " + a.getClass().getName());
        List<Integer> lst = (List)a;
        
        for (Entry<String, Object> entry : jsonObj.entrySet()) {
            System.out.println(entry.getKey() + ":" + entry.getValue().getClass().getName()/*entry.getValue()*/);
          
        }
		
		UserInfoInputFormDTO userInput = new UserInfoInputFormDTO();
		
		userInput.setPhonenumber("15921614832");
		userInput.setPhonevalidate("3345");
		userInput.setPassword("abcdefg");
		userInput.setConfirmPassword("abcdefg");
		
		assertEquals(user_service.saveUserInfo(userInput), ErrorDefines.E_OK);
	}

}

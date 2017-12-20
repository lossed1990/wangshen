package com.xuexin.wangshen.service;

import java.util.List;

import com.xuexin.wangshen.model.pojo.HelloTestData;
import com.xuexin.wangshen.model.pojo.ZoneeErrorCodeInfoInPojo;

public interface HelloService {
		
	/*
	 * 测试接口
	 */
	List<HelloTestData> GetTestData();
	
	/*
	 * 测试持久层
	 */
	List<ZoneeErrorCodeInfoInPojo> GetAllErrorInfo();
}

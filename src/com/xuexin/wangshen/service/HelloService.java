package com.xuexin.wangshen.service;

import java.util.List;

import com.xuexin.wangshen.model.pojo.HelloTestDataDO;
import com.xuexin.wangshen.model.pojo.ZoneeErrorCodeInfoInDO;

public interface HelloService {
		
	/*
	 * 测试接口
	 */
	List<HelloTestDataDO> GetTestData();
	
	/*
	 * 测试持久层
	 */
	List<ZoneeErrorCodeInfoInDO> GetAllErrorInfo();
}

package com.xuexin.wangshen.service;

import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xuexin.wangshen.dao.HelloWorldDAO;
import com.xuexin.wangshen.model.pojo.HelloTestDataDO;
import com.xuexin.wangshen.model.pojo.ZoneeErrorCodeInfoInDO;

@Service("helloService")
public class HelloServiceImpl implements HelloService {
	
	@Resource
	private HelloWorldDAO dao; 

	@Override
	public List<HelloTestDataDO> GetTestData() {
		
		//make test  data
		List<HelloTestDataDO> lstData = new ArrayList<HelloTestDataDO>();
		
		HelloTestDataDO data1 = new HelloTestDataDO();
		data1.setbIsMale(false);
		data1.setnAge(20);
		data1.setStrAddr("大连路长阳路");
		data1.setStrName("张长策");
		data1.setDtNow(new Date(new java.util.Date().getTime()));
		
		HelloTestDataDO data2 = new HelloTestDataDO();
		data2.setbIsMale(true);
		data2.setnAge(29);
		data2.setStrAddr("四平路赤峰路");
		data2.setStrName("李三三");
		data2.setDtNow(new Date(1234567890));
		
		lstData.add(data1);
		lstData.add(data2);
		
		return lstData;
	}

	@Override
	public List<ZoneeErrorCodeInfoInDO> GetAllErrorInfo() {
		
		return dao.GetErrorCodeInfoList();
	}
}

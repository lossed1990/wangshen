package com.xuexin.wangshen.service;

import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xuexin.wangshen.dao.HelloWorldDAO;
import com.xuexin.wangshen.model.pojo.HelloTestData;
import com.xuexin.wangshen.model.pojo.ZoneeErrorCodeInfoInPojo;

@Service("helloService")
public class HelloServiceImpl implements HelloService {
	
	@Resource
	private HelloWorldDAO dao; 

	@Override
	public List<HelloTestData> GetTestData() {
		
		//make test  data
		List<HelloTestData> lstData = new ArrayList<HelloTestData>();
		
		HelloTestData data1 = new HelloTestData();
		data1.setbIsMale(false);
		data1.setnAge(20);
		data1.setStrAddr("大连路长阳路");
		data1.setStrName("张长策");
		data1.setDtNow(new Date(new java.util.Date().getTime()));
		
		HelloTestData data2 = new HelloTestData();
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
	public List<ZoneeErrorCodeInfoInPojo> GetAllErrorInfo() {
		
		return dao.GetErrorCodeInfoList();
	}
}

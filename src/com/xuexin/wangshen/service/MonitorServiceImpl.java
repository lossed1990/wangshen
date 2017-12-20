package com.xuexin.wangshen.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.xuexin.wangshen.model.pojo.MonitorUserProfile;
import com.xuexin.wangshen.util.HttpClientHelper;

@Service("monitorService")
public class MonitorServiceImpl implements MonitorService {

	public List<MonitorUserProfile> GetUserProfileByUserName(String strUsername) {
		
		MonitorUserProfile a = new MonitorUserProfile();
		a.setStrUserName("someone");
		String jsonNumber = JSON.toJSONString(a);       // 100
		
		HttpClientHelper http = new HttpClientHelper("http://192.168.2.130:9200/test/abcd/_mapping");
		
		int nCode = http.DoGetRequest(null);
		String strResp = http.GetResponseString();
		boolean bret  = http.IsReponseJSON();
		http.CleanUp();
		
		List<MonitorUserProfile> lstResult = new ArrayList<MonitorUserProfile>();
		
		lstResult.add(new MonitorUserProfile());
		
		return lstResult;
	}
}

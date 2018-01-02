package com.xuexin.wangshen.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.xuexin.wangshen.model.pojo.MonitorUserProfileVO;
import com.xuexin.wangshen.util.HttpClientHelper;

@Service("monitorService")
public class MonitorServiceImpl implements MonitorService {

	public List<MonitorUserProfileVO> GetUserProfileByUserName(String strUsername) {
		
		MonitorUserProfileVO a = new MonitorUserProfileVO();
		a.setStrUserName("someone");
		String jsonNumber = JSON.toJSONString(a);       // 100
		
		HttpClientHelper http = new HttpClientHelper("http://192.168.2.130:9200/test/abcd/_mapping");
		
		int nCode = http.DoGetRequest(null);
		String strResp = http.GetResponseString();
		boolean bret  = http.IsReponseJSON();
		http.CleanUp();
		
		List<MonitorUserProfileVO> lstResult = new ArrayList<MonitorUserProfileVO>();
		
		lstResult.add(new MonitorUserProfileVO());
		
		return lstResult;
	}
}

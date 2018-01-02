package com.xuexin.wangshen.service;

import java.util.List;

import com.xuexin.wangshen.model.pojo.MonitorUserProfileVO;

public interface MonitorService {

	public List<MonitorUserProfileVO> GetUserProfileByUserName(String strUsername);
}

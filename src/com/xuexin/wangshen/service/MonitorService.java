package com.xuexin.wangshen.service;

import java.util.List;

import com.xuexin.wangshen.model.pojo.MonitorUserProfile;

public interface MonitorService {

	public List<MonitorUserProfile> GetUserProfileByUserName(String strUsername);
}

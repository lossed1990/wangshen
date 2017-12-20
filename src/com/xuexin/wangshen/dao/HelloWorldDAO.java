package com.xuexin.wangshen.dao;

import java.util.List;

import com.xuexin.wangshen.model.pojo.ZoneeErrorCodeInfoInPojo;

public interface HelloWorldDAO {

	/*
	 * 获取平台所有的错误码
	 */
	List<ZoneeErrorCodeInfoInPojo> GetErrorCodeInfoList();
}

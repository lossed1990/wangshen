package com.xuexin.wangshen.dao;

import java.util.List;

import com.xuexin.wangshen.model.pojo.ZoneeErrorCodeInfoInDO;

public interface HelloWorldDAO {

	/*
	 * 获取平台所有的错误码
	 */
	List<ZoneeErrorCodeInfoInDO> GetErrorCodeInfoList();
}

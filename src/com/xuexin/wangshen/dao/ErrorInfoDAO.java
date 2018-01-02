package com.xuexin.wangshen.dao;

import java.util.List;

import com.xuexin.wangshen.model.pojo.ErrorInfoDO;

public interface ErrorInfoDAO {

	/*
	 * 获取所有的错误码
	 */
	List<ErrorInfoDO> listErrorCodeInfo();
}

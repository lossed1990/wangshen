package com.xuexin.wangshen.service;

import java.util.List;

import com.xuexin.wangshen.model.pojo.ErrorInfoDO;

public interface GlobalService {

	List<ErrorInfoDO> listAllErrorCodeInfo();		//列出系统所有错误码
}

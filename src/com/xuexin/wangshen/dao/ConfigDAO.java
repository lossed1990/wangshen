package com.xuexin.wangshen.dao;

import org.apache.ibatis.annotations.Param;

public interface ConfigDAO {

	/*
	 * 获取系统配置
	 */
	String getSystemConfigByKey(String key);
	
	/*
	 * 更新系统配置
	 */
	int updateSystemConfigByKey(@Param(value="key")String key, @Param(value="value")String value);
}

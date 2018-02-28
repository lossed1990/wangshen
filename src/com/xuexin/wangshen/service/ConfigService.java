package com.xuexin.wangshen.service;

import java.util.List;

import com.xuexin.wangshen.model.pojo.BasicDataResumeSectionsDO;
import com.xuexin.wangshen.model.pojo.ConfigWxMobileGateDTO;

/*
 * 配置管理服务
 */
public interface ConfigService {

	/*
	 * 获取短信网关配置
	 */
	ConfigWxMobileGateDTO getWxMobileConfig();
	
	/*
	 * 更新短信网关配置
	 */
	int updateWxMobileConfig(ConfigWxMobileGateDTO config);
	
	/*
	 * 获取简历模块列表
	 */
	List<BasicDataResumeSectionsDO> listResumeSections();
}

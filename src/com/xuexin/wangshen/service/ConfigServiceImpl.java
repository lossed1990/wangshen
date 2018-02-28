package com.xuexin.wangshen.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.xuexin.wangshen.dao.ConfigDAO;
import com.xuexin.wangshen.model.pojo.BasicDataResumeSectionsDO;
import com.xuexin.wangshen.model.pojo.ConfigWxMobileGateDTO;
import com.xuexin.wangshen.util.ConstConfigDefine;

@Service("configService")
public class ConfigServiceImpl implements ConfigService {

	@Resource
	private ConfigDAO dao_config; 
	
	@Override
	public ConfigWxMobileGateDTO getWxMobileConfig() {
		
		String strValue = dao_config.getSystemConfigByKey(ConstConfigDefine.CONFIG_KEY_WXMOBILE);
		
		ConfigWxMobileGateDTO config = JSON.parseObject(strValue, ConfigWxMobileGateDTO.class);
		
		return config;
	}

	@Override
	public int updateWxMobileConfig(ConfigWxMobileGateDTO config) {

		String strValue = JSON.toJSONString(config);
		
		return dao_config.updateSystemConfigByKey(ConstConfigDefine.CONFIG_KEY_WXMOBILE, strValue);
	}

	@Override
	public List<BasicDataResumeSectionsDO> listResumeSections() {
				
		String strValue = dao_config.getSystemConfigByKey(ConstConfigDefine.CONFIG_KEY_BASSECS);
		
		List<BasicDataResumeSectionsDO> lstSections = JSON.parseArray(strValue, BasicDataResumeSectionsDO.class);
		
		return lstSections;
	}

}

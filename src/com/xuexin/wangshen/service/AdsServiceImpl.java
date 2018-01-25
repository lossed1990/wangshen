package com.xuexin.wangshen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xuexin.wangshen.dao.AdsManagmentDAO;
import com.xuexin.wangshen.model.pojo.AdsDO;

@Service("adsService")
public class AdsServiceImpl implements AdsService{
	
	@Resource
	private AdsManagmentDAO dao_adsinfo;

	@Override
	public int saveAdsInfo(AdsDO ads) {
		
		return dao_adsinfo.saveAdsInfo(ads);
	}

	@Override
	public int updateAdsInfo(AdsDO ads) {

		return dao_adsinfo.updateAdsInfo(ads);
	}

	@Override
	public AdsDO getAdsInfo(int type) {

		return dao_adsinfo.getAdsInfo(type);
	}

	@Override
	public int deleteAdsInfo(int type) {

		return dao_adsinfo.deleteAdsInfo(type);
	} 
}

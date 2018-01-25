package com.xuexin.wangshen.service;

import com.xuexin.wangshen.model.pojo.AdsDO;

/*
 * 广告管理服务
 */
public interface AdsService {

	/*
	 * 保存广告
	 */
	int saveAdsInfo(AdsDO ads);
	
	/*
	 * 更新广告
	 */
	int updateAdsInfo(AdsDO ads);
	
	/*
	 * 获取广告
	 */
	AdsDO getAdsInfo(int type);
	
	/*
	 * 删除广告
	 */
	int deleteAdsInfo(int type);
}

package com.xuexin.wangshen.dao;

import com.xuexin.wangshen.model.pojo.AdsDO;;

/*
 * 广告内容管理
 */
public interface AdsManagmentDAO {

	/*
	 * 保存广告信息
	 */
	int saveAdsInfo(AdsDO ads);
	
	/*
	 * 更新广告信息
	 */
	int updateAdsInfo(AdsDO ads);
	
	/*
	 * 获取广告信息
	 */
	AdsDO getAdsInfo(int type);
	
	/*
	 * 删除广告信息
	 */
	int deleteAdsInfo(int type);
}

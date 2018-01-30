package com.xuexin.wangshen.dao;

import com.xuexin.wangshen.model.pojo.ResumeDO;

/*
 * 简历管理
 */
public interface ResumeManagmentDAO {

	/*
	 * 保存简历，用于新建
	 */
	int saveResume(ResumeDO resume);
		
	/*
	 * 部分更新简历，独立更新各个模块
	 */
	int updateResumeSection(ResumeDO resume);
	
	/*
	 * 通过GUID获取简历
	 */
	ResumeDO getResumeByGUID(String strGUID);
	
	/*
	 * 删除特定简历
	 */
	int deleteResumeByGUID(String strGUID);
}

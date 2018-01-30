package com.xuexin.wangshen.service;

import java.util.List;

import com.xuexin.wangshen.model.pojo.ResumeDO;
import com.xuexin.wangshen.model.pojo.ResumePartDTO;

/*
 * 简历管理服务
 */
public interface ResumeService {

	/*
	 * 保存简历，用于新建
	 */
	int saveNewResume(ResumeDO resume);
	
	/*
	 * 更新部分简历
	 */
	int updateResumePart(int nLastModUser, ResumePartDTO partresume);
	
	/*
	 * 获取简历信息
	 */
	ResumeDO getResumeByGUID(String strGUID);
	
	/*
	 * 删除简历
	 */
	int deleteResume(String strGUID);
}

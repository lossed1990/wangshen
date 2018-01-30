package com.xuexin.wangshen.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xuexin.wangshen.model.pojo.ResumeDO;
import com.xuexin.wangshen.model.pojo.ResumeListVO;

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
	
	/*
	 * 计数简历，用于分页或者统计
	 */
	int countResumesByUser(int nUserID);
	
	/*
	 * 列出区间简历，用于分页
	 */
	List<ResumeListVO> listResumesInPageByUser(@Param(value="nUserID")int nUserID, 
											@Param(value="nStart")int nStart, 
											@Param(value="nEnd")int nEnd);
}

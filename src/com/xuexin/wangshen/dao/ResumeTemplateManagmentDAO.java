package com.xuexin.wangshen.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xuexin.wangshen.model.pojo.ResumeTemplateDO;;

/*
 * 模板管理
 */
public interface ResumeTemplateManagmentDAO {

	/*
	 * 保存模板，用于新建
	 */
	int saveTemplateInfo(ResumeTemplateDO tpl);
	
	/*
	 * 更新模板，包括分别更新名称，封面，使能，一次只更新一个字段
	 */
	int updateTemplateInfo(ResumeTemplateDO tpl);
		
	/*
	 * 获取模板信息
	 */
	ResumeTemplateDO getTemplateInfo(int tempid);
	
	/*
	 * 列举所有模板，附带开关，是否只显示启用项目
	 */
	List<ResumeTemplateDO> listTemplateInfo(@Param(value="bOnlyShowEnable")boolean onlyenabled);
	
	/*
	 * 删除模板，附带关联简历
	 */
	int deleteTemplatePurge(int tempid);
}

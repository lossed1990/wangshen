package com.xuexin.wangshen.service;

import java.util.List;

import com.xuexin.wangshen.model.pojo.ResumeTemplateDO;
import com.xuexin.wangshen.model.pojo.ResumeTemplatePartDTO;

/*
 * 模板管理服务
 */
public interface ResumeTemplateService {

	/*
	 * 保存模板，用于新建
	 */
	int saveTemplateInfo(ResumeTemplateDO tpl);
	
	/*
	 * 更新模板，包括分别更新名称，封面，使能，一次只更新一个字段
	 */
	int updateTemplateInfo(ResumeTemplateDO tpl);
	
	/*
	 * 更新模板JSON
	 */
	int updateTemplateJSON(ResumeTemplatePartDTO modinfo);
		
	/*
	 * 获取模板信息
	 */
	ResumeTemplateDO getTemplateInfo(int nTempID);
	
	/*
	 * 列举所有模板，附带开关，是否只显示启用项目
	 */
	List<ResumeTemplateDO> listTemplateInfo(boolean bOnlyShowEnable);
	
	/*
	 * 删除模板，附带关联简历
	 */
	int deleteTemplatePurge(int nTempID);
}

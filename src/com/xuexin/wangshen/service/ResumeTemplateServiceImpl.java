package com.xuexin.wangshen.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xuexin.wangshen.dao.ResumeTemplateManagmentDAO;
import com.xuexin.wangshen.model.pojo.ResumeTemplateDO;

@Service("tmplService")
public class ResumeTemplateServiceImpl implements ResumeTemplateService {

	@Resource
	private ResumeTemplateManagmentDAO dao_tmpl;

	@Override
	public int saveTemplateInfo(ResumeTemplateDO tpl) {

		return dao_tmpl.saveTemplateInfo(tpl);
	}

	@Override
	public int updateTemplateInfo(ResumeTemplateDO tpl) {

		return dao_tmpl.updateTemplateInfo(tpl);
	}

	@Override
	public ResumeTemplateDO getTemplateInfo(int nTempID) {

		return dao_tmpl.getTemplateInfo(nTempID);
	}

	@Override
	public List<ResumeTemplateDO> listTemplateInfo(boolean bOnlyShowEnable) {

		return dao_tmpl.listTemplateInfo(bOnlyShowEnable);
	}

	@Override
	public int deleteTemplatePurge(int nTempID) {

		return dao_tmpl.deleteTemplatePurge(nTempID);
	}
}

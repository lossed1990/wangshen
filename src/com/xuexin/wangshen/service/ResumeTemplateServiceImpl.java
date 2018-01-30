package com.xuexin.wangshen.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.xuexin.wangshen.dao.ResumeTemplateManagmentDAO;
import com.xuexin.wangshen.model.pojo.ResumeTemplateDO;
import com.xuexin.wangshen.model.pojo.ResumeTemplatePartDTO;

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

	@Override
	public int updateTemplateJSON(ResumeTemplatePartDTO modinfo) {

		// 先从数据库取出原值
		ResumeTemplateDO tplold = dao_tmpl.getTemplateInfo(Integer.parseInt(modinfo.getTemp_id()));
		
		//未找到
		if(tplold == null) {
			return 0;
		}
		
		// 从字符串转到json对象
		JSONObject jsObj = JSON.parseObject(tplold.getStrTempJson());

		// 替换新内容
		jsObj.put(modinfo.getKey(), modinfo.getValue());

		// 转换为字符串
		String strNewJSON = JSON.toJSONString(jsObj);

		// 保存到数据库，只修改json
		ResumeTemplateDO tpNew = new ResumeTemplateDO();
		tpNew.setnTempID(tplold.getnTempID());
		tpNew.setStrTempJson(strNewJSON);

		return dao_tmpl.updateTemplateInfo(tpNew);
	}
}

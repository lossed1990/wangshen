package com.xuexin.wangshen.web.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.xuexin.wangshen.model.pojo.CommonResultDTO;
import com.xuexin.wangshen.model.pojo.ResumeTemplateDO;
import com.xuexin.wangshen.model.pojo.ResumeTemplateModCoverDTO;
import com.xuexin.wangshen.model.pojo.ResumeTemplateModEnableDTO;
import com.xuexin.wangshen.model.pojo.ResumeTemplateModNameDTO;
import com.xuexin.wangshen.model.pojo.ResumeTemplatePartDTO;
import com.xuexin.wangshen.service.GlobalService;
import com.xuexin.wangshen.service.ResumeTemplateService;
import com.xuexin.wangshen.util.ErrorDefines;
import com.xuexin.wangshen.util.WebContextResouceBundleReader;

@Controller
@RequestMapping("/resumetmpl")
public class ResumeTemplatesAction {
	
	private static Logger logger = LoggerFactory.getLogger(ResumeTemplatesAction.class);
	
	@Resource(name="globalService")
	private GlobalService service_global;
	
	@Resource(name="tmplService")
	private ResumeTemplateService service_tmpl;
		//列出简历模板
	    @RequestMapping(value = "/resumetemplates-list.page", method=RequestMethod.GET)
	    public String resumeTemplateList(Model model) {
	    	
	    	List<ResumeTemplateDO> lsttmpls = service_tmpl.listTemplateInfo(false);
	    	model.addAttribute("lstTemps", lsttmpls);

	        return "page_resumetemplates_list";
	    }
	    
	    //编辑简历模板
	    @RequestMapping(value = "/resumetemplates-edit.page", method=RequestMethod.GET)
	    public String resumeTemplateEdit(Model model) {
	    	
	    	logger.info("transfer to FreeMarker view");
	    	

	        return "page_resumetemplates_edit";
	    }
	    
	    //新建模板
	    @RequestMapping(value = "/resumetemplates-new.page", method=RequestMethod.POST)
	    public String resumeTemplateNew(Model model, HttpServletRequest request, RedirectAttributes attr,
	    								@RequestParam(value="templatename") String strTemplName, 
	    								@RequestParam(value="templatecover_id") String strCoverID) {
	    	
	    	//简单参数检查
	    	if(strTemplName == null || strTemplName.length() == 0 ||  
	    		strCoverID == null	|| strCoverID.length() == 0) {
	    		
	    		//作为运行时错误
	    		model.addAttribute("error", 
	    				WebContextResouceBundleReader.makeRuntimeErrorInfoByCode(Integer.toHexString(ErrorDefines.E_SVR_RUNTIME_BADINPUT), request));

	            return "page_runtime_exception";  
	    	}
	    	
	    	//新建
	    	ResumeTemplateDO tpl = new ResumeTemplateDO();
	    	tpl.setStrTempName(strTemplName);
	    	tpl.setStrTempPic(strCoverID);
	    	
	    	//保存到数据库
	    	if(service_tmpl.saveTemplateInfo(tpl) == 0) {
	    		//作为运行时错误
	    		model.addAttribute("error", 
	    				WebContextResouceBundleReader.makeRuntimeErrorInfoByCode(Integer.toHexString(ErrorDefines.E_SVR_RUNTIME_DBFAILED), request));

	            return "page_runtime_exception";  
	    	}
	    	
	    	//操作成功，带参数跳转到模板编辑页面
	    	attr.addAttribute("temp_id", tpl.getnTempID());
	    	
	    	return "redirect:resumetemplates-edit.page";
	    }
	    
	    //修改模板名称
	    @RequestMapping(value = "/resumetemplates-mod-name.json", method=RequestMethod.POST, consumes = "application/json")
	    @ResponseBody
	    public CommonResultDTO resumeTemplateModName(@RequestBody ResumeTemplateModNameDTO modname) {
	    	
	    	CommonResultDTO result = new CommonResultDTO();
	    		    	
	    	//修改名称
	    	ResumeTemplateDO tpl = new ResumeTemplateDO();
	    	tpl.setnTempID(Integer.parseInt(modname.getTemp_id()));
	    	tpl.setStrTempName(modname.getNew_name());
	    	
	    	int nEffected = service_tmpl.updateTemplateInfo(tpl);
	    	
	    	//未修改成功
	    	if(nEffected == 0) {
	    		result.setErrorinfo(ErrorDefines.E_JSON_NOCHANGE);
	    	} else {
	    		
	    		result.setOk(true);
	    	}
	    	
	        return result;
	    }
	    
	    //修改模板封面
	    @RequestMapping(value = "/resumetemplates-mod-cover.json", method=RequestMethod.POST, consumes = "application/json")
	    @ResponseBody
	    public CommonResultDTO resumeTemplateModCovere(@RequestBody ResumeTemplateModCoverDTO modcover) {
	    	
	    	CommonResultDTO result = new CommonResultDTO();
	    		    	
	    	//修改封面
	    	ResumeTemplateDO tpl = new ResumeTemplateDO();
	    	tpl.setnTempID(Integer.parseInt(modcover.getTemp_id()));
	    	tpl.setStrTempPic(modcover.getNew_cover_id());
	    	
	    	int nEffected = service_tmpl.updateTemplateInfo(tpl);
	    	
	    	//未修改成功
	    	if(nEffected == 0) {
	    		result.setErrorinfo(ErrorDefines.E_JSON_NOCHANGE);
	    	} else {
	    		
	    		result.setOk(true);
	    	}
	    	
	        return result;
	    }
	    
	    //修改模板启用属性
	    @RequestMapping(value = "/resumetemplates-enable.json", method=RequestMethod.POST, consumes = "application/json")
	    @ResponseBody
	    public CommonResultDTO resumeTemplateModCovere(@RequestBody ResumeTemplateModEnableDTO modenable) {
	    	
	    	CommonResultDTO result = new CommonResultDTO();
	    		    	
	    	//修改使能
	    	ResumeTemplateDO tpl = new ResumeTemplateDO();
	    	tpl.setnTempID(Integer.parseInt(modenable.getTemp_id()));
	    	tpl.setbEnable(modenable.isEnable());
	    	
	    	int nEffected = service_tmpl.updateTemplateInfo(tpl);
	    	
	    	//未修改成功
	    	if(nEffected == 0) {
	    		result.setErrorinfo(ErrorDefines.E_JSON_NOCHANGE);
	    	} else {
	    		
	    		result.setOk(true);
	    	}
	    	
	        return result;
	    }
	    
	    //修改模板某一个模块
	    @RequestMapping(value = "/resumetemplates-part-save.json", method=RequestMethod.POST, consumes = "application/json")
	    @ResponseBody
	    public CommonResultDTO resumeTemplatePartSave(@RequestBody ResumeTemplatePartDTO modpart) {
	    	
	    	CommonResultDTO result = new CommonResultDTO();
	    	
	    	//先从数据库取出原值
	    	ResumeTemplateDO tplold = service_tmpl.getTemplateInfo(Integer.parseInt(modpart.getTemp_id()));
	    	
	    	if(tplold == null) {
	    		//未找到
	    		result.setErrorinfo(ErrorDefines.E_JSON_NODATA);
	    	} else {
	    		//从字符串转到json对象
	    		JSONObject jsObj = JSON.parseObject(tplold.getStrTempJson());
	    		
	    		//替换新内容
	    		jsObj.put(modpart.getKey(), modpart.getValue());
	    		
	    		//转换为字符串
	    		String strNewJSON = JSON.toJSONString(jsObj);
	    		
	    		//保存到数据库，只修改json
	    		ResumeTemplateDO tpNew = new ResumeTemplateDO();
	    		tpNew.setnTempID(tplold.getnTempID());
	    		tpNew.setStrTempJson(strNewJSON);
	    		
	    		service_tmpl.updateTemplateInfo(tpNew);
	    		
	    		result.setOk(true);
	    	}
	    	
	        return result;
	    }
	    
	    //删除模板，附带删除关联简历
	    @RequestMapping(value = "/resumetemplates-purgeremove.json", method=RequestMethod.GET)
	    @ResponseBody
	    public CommonResultDTO resumeTemplateRemovePurge(@RequestParam("temp_id") int nTempID) {
	    	
	    	CommonResultDTO result = new CommonResultDTO();
	    		    	
	    	//删除
	    	service_tmpl.deleteTemplatePurge(nTempID);
	    	result.setOk(true);
	    	
	        return result;
	    }
	    
	    //获取具体模板详情
	    @RequestMapping(value = "/resumetemplates-detail.json", method=RequestMethod.GET)
	    @ResponseBody
	    public CommonResultDTO resumeTemplateDetailJSON(@RequestParam("temp_id") int nTempID) {
	    	
	    	CommonResultDTO result = new CommonResultDTO();
	    		    	
	    	//获取
	    	ResumeTemplateDO tmpl = service_tmpl.getTemplateInfo(nTempID);
	    	
	    	if(tmpl == null) {
	    		//未找到
	    		result.setErrorinfo(ErrorDefines.E_JSON_NODATA);
	    	} else {
	    		//从字符串转到json对象
	    		JSONObject jsObj = JSON.parseObject(tmpl.getStrTempJson());
	    		result.setResult(jsObj);
	    		result.setOk(true);
	    	}
	    	
	        return result;
	    }
}

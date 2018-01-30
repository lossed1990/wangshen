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

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.xuexin.wangshen.model.pojo.CommonResultDTO;
import com.xuexin.wangshen.model.pojo.ResumeDO;
import com.xuexin.wangshen.model.pojo.ResumePartDTO;
import com.xuexin.wangshen.service.GlobalService;
import com.xuexin.wangshen.service.ResumeService;
import com.xuexin.wangshen.util.ErrorDefines;
import com.xuexin.wangshen.util.WebContextResouceBundleReader;

@Controller
@RequestMapping("/resume")
public class ResumesAction {

	private static Logger logger = LoggerFactory.getLogger(ResumesAction.class);

	@Resource(name = "globalService")
	private GlobalService service_global;

	@Resource(name = "resumeService")
	private ResumeService service_resume;

	// 用户添加简历
	@RequestMapping(value = "/resume-add.page", method = RequestMethod.GET)
	public String resumeAdd(Model model) {

		logger.info("transfer to FreeMarker view");

		return "page_resume_add";
	}

	// 浏览所有简历
	@RequestMapping(value = "/resume-list.page", method = RequestMethod.GET)
	public String resumeList(Model model) {

		logger.info("transfer to FreeMarker view");

		return "page_resume_list";
	}

	// 编辑简历
	@RequestMapping(value = "/resume-edit.page", method = RequestMethod.GET)
	public String resumeEdit(Model model, HttpServletRequest request, 
							@RequestParam(value = "temp_id", required = false) Integer nTemplateID, 
							@RequestParam(value = "resume_guid", required = false) String strResumeGUID) {

		ResumeDO resume = new ResumeDO();
		
		//通过参数判断是否新建
		if(nTemplateID != null) {
			
			resume.setnTemplateID(nTemplateID);
			
			//TODO: 设置用户参数
			if(service_resume.saveNewResume(resume) == 0) {
				// 作为运行时错误，数据库操作失败
				model.addAttribute("error", WebContextResouceBundleReader
						.makeRuntimeErrorInfoByCode(Integer.toHexString(ErrorDefines.E_SVR_RUNTIME_DBFAILED), request));

				return "page_runtime_exception";
			}		
		} else if(strResumeGUID != null && strResumeGUID.length() > 0) {
			
			//编辑页面
			resume = service_resume.getResumeByGUID(strResumeGUID);
			
			if(resume == null) {
				//数据不存在
				model.addAttribute("error", WebContextResouceBundleReader
						.makeRuntimeErrorInfoByCode(Integer.toHexString(ErrorDefines.E_SVR_RUNTIME_NODATA), request));

				return "page_runtime_exception";
			}
			
		} else {
			//参数缺失
			model.addAttribute("error", WebContextResouceBundleReader
					.makeRuntimeErrorInfoByCode(Integer.toHexString(ErrorDefines.E_SVR_RUNTIME_NOPARAM), request));

			return "page_runtime_exception";
		}
		
		//回传参数给用户
		model.addAttribute("temp_id", resume.getnTemplateID());
		model.addAttribute("resume_guid", resume.getStrResumeGUID());

		return "page_resume_edit";
	}

	// 预览简历
	@RequestMapping(value = "/resume-view.page", method = RequestMethod.GET)
	public String resumeView(Model model) {

		logger.info("transfer to FreeMarker view");

		return "page_resume_view";
	}
	
	// 删除简历
	@RequestMapping(value = "/resume-remove.json", method = RequestMethod.GET)
	@ResponseBody
	public CommonResultDTO resumeRemove(@RequestParam("resume_id") String strGUID) {

		CommonResultDTO result = new CommonResultDTO();
		
		service_resume.deleteResume(strGUID);
		result.setOk(true);

		return result;
	}
	
	// 保存简历某一模块
	@RequestMapping(value = "/resume-part-save.json", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public CommonResultDTO resumePartSave(@RequestBody ResumePartDTO partresume) {

		CommonResultDTO result = new CommonResultDTO();
		
		//TODO: 获取当前用户信息
		int nEffected = service_resume.updateResumePart(1, partresume);
		
		if(nEffected == 0) {
			
			result.setErrorinfo(ErrorDefines.E_JSON_NOCHANGE);
		} else {
		
			result.setOk(true);
		}

		return result;
	}
	
	// 获取简历某一模块，模块名不强制，不提供则返回整个简历信息
	@RequestMapping(value = "/resume-part-detail.json", method = RequestMethod.GET)
	@ResponseBody
	public CommonResultDTO resumePartDetail(@RequestParam("resume_id") String strGUID, 
											@RequestParam(value = "section_name", required = false) String strSecName) {

		CommonResultDTO result = new CommonResultDTO();
		
		//获取简历信息
		ResumeDO resume = service_resume.getResumeByGUID(strGUID);
		
		if(resume == null) {
			//未找到
			result.setErrorinfo(ErrorDefines.E_JSON_NODATA);
		} else {
			
			result.setOk(true);
			
			// 从字符串转到json对象
			JSONObject jsObj = JSON.parseObject(resume.getStrResumeJOSN());
			
			//如果未提供模块，则返回整个简历
			if(strSecName == null) {
				
				result.setResult(jsObj);
			} else {
				
				//提取某个模块
				result.setResult(jsObj.getJSONObject(strSecName));
			}
		}
		
		return result;
	}
}

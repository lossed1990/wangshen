package com.xuexin.wangshen.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xuexin.wangshen.service.GlobalService;

@Controller
@RequestMapping("/resumetmpl")
public class ResumeTemplatesAction {
	
	private static Logger logger = LoggerFactory.getLogger(ResumeTemplatesAction.class);
	
	@Resource(name="globalService")
	private GlobalService service_global;
	
		//列出简历模板
	    @RequestMapping(value = "/resumetemplates-list.page", method=RequestMethod.GET)
	    public String resumeTemplateList(Model model) {
	    	
	    	logger.info("transfer to FreeMarker view");
	    	

	        return "page_resumetemplates_list";
	    }
	    
	    //编辑简历模板
	    @RequestMapping(value = "/resumetemplates-edit.page", method=RequestMethod.GET)
	    public String resumeTemplateEdit(Model model) {
	    	
	    	logger.info("transfer to FreeMarker view");
	    	

	        return "page_resumetemplates_edit";
	    }
}

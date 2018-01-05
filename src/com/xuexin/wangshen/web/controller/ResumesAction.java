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
@RequestMapping("/resume")
public class ResumesAction {
	
	private static Logger logger = LoggerFactory.getLogger(ResumesAction.class);
	
	@Resource(name="globalService")
	private GlobalService service_global;
	
		//用户添加简历
	    @RequestMapping(value = "/resume-add.page", method=RequestMethod.GET)
	    public String resumeAdd(Model model) {
	    	
	    	logger.info("transfer to FreeMarker view");
	    	

	        return "page_resume_add";
	    }
	    
	    //浏览所有简历
	    @RequestMapping(value = "/resume-list.page", method=RequestMethod.GET)
	    public String resumeList(Model model) {
	    	
	    	logger.info("transfer to FreeMarker view");
	    	


	        return "page_resume_list";
	    }
}

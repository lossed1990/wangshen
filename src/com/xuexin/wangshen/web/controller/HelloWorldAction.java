package com.xuexin.wangshen.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xuexin.wangshen.model.pojo.ErrorInfoDO;
import com.xuexin.wangshen.service.GlobalService;

@Controller
@RequestMapping("/test")
public class HelloWorldAction {
	
	private static Logger logger = LoggerFactory.getLogger(HelloWorldAction.class);
	
	@Resource(name="globalService")
	private GlobalService service_global;
	
	    @RequestMapping(value = "/helloWorld.page", method=RequestMethod.GET)
	    public String testFreemarker(Model model) {
	    	
	    	logger.info("transfer to FreeMarker view");
	    	
	        List<ErrorInfoDO> data = service_global.listAllErrorCodeInfo();
	        	        
	        model.addAttribute("data", data);

	        return "HelloWorld";
	    }
}

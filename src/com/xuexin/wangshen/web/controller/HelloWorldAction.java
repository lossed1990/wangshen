package com.xuexin.wangshen.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuexin.wangshen.model.pojo.HelloTestData;
import com.xuexin.wangshen.model.pojo.ZoneeErrorCodeInfoInPojo;
import com.xuexin.wangshen.service.HelloService;

@Controller
@RequestMapping("/test")
public class HelloWorldAction {
	
	private static Logger logger = LoggerFactory.getLogger(HelloWorldAction.class);
	
	@Resource(name="helloService")
	private HelloService service;
	
	    @RequestMapping(value = "/helloFreeMarker.page", method=RequestMethod.GET)
	    public String testFreemarker(Model model) {
	    	
	    	logger.info("transfer to FreeMarker view");
	    	
	        List<HelloTestData> data = service.GetTestData();
	        
	        List<ZoneeErrorCodeInfoInPojo> data2 = service.GetAllErrorInfo();
	        
	        model.addAttribute("data", data);
	        model.addAttribute("data2", data2);
	        return "HelloWorld";
	    }

	    @RequestMapping(value = "/helloFastJson.json", method=RequestMethod.GET)
	    @ResponseBody
	    public List<HelloTestData> testFastJson() {
	    	
	    	logger.info("transfer to FastJson view in a good time");
	    	
	    	List<HelloTestData> data = service.GetTestData();
	        
	        return data;
	     } 
}

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
@RequestMapping("/config")
public class SystemConfigAction {
	
	private static Logger logger = LoggerFactory.getLogger(SystemConfigAction.class);
	
	@Resource(name="globalService")
	private GlobalService service_global;
	
    //广告设置
    @RequestMapping(value = "/ads-edit.page", method=RequestMethod.GET)
    public String adsEdit(Model model) {
    	
    	logger.info("transfer to FreeMarker view");
    	


        return "page_ads_edit";
    }
}

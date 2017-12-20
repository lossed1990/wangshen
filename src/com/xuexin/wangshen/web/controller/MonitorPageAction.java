package com.xuexin.wangshen.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuexin.wangshen.model.pojo.MonitorUserProfile;
import com.xuexin.wangshen.service.MonitorService;

@Controller
@RequestMapping("/monitor")
public class MonitorPageAction {
	
	private static Logger logger = LoggerFactory.getLogger("RUNLOG");
	
	@Resource(name="monitorService")
	private MonitorService service;
	
	@RequestMapping(value = "/GetUserProfileByName.r",method=RequestMethod.GET)
	@ResponseBody
	public List<MonitorUserProfile> GetUserProfileByName(String strUsername)
	{
		return service.GetUserProfileByUserName(strUsername);
	}
}

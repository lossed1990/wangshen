package com.xuexin.wangshen.web.controller;

import static nl.captcha.Captcha.NAME;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuexin.wangshen.model.pojo.RemoteValiteResultDTO;
import com.xuexin.wangshen.service.GlobalService;

@Controller
@RequestMapping("/user")
public class UserAction {
	
	private static Logger logger = LoggerFactory.getLogger(UserAction.class);
	
	@Resource(name="globalService")
	private GlobalService service_global;
	
		//用户欢迎页
	    @RequestMapping(value = "/user-wellcome.page", method=RequestMethod.GET)
	    public String userWellcome(Model model) {
	    	
	    	logger.info("transfer to FreeMarker view");
	    	


	        return "page_user_wellcome";
	    }
	    
	    //管理员欢迎页
	    @RequestMapping(value = "/admin-wellcome.page", method=RequestMethod.GET)
	    public String adminWellcome(Model model) {
	    	
	    	logger.info("transfer to FreeMarker view");


	        return "page_admin_wellcome";
	    }
	    
	    //用户登陆页
	    @RequestMapping(value = "/login.page", method=RequestMethod.GET)
	    public String userLogin(Model model, HttpSession session) {
	    	
	    	logger.info("transfer to FreeMarker view");
	    	
	    	//request.getSession(false);
	    	

	        return "page_user_login";
	    }
	    
	    //登陆验证码匹配
	    @RequestMapping(value = "/check-captcha.json", method=RequestMethod.GET)
	    @ResponseBody
	    public RemoteValiteResultDTO checkCaptcha(Model model, HttpSession session, String captcha) {
	    		    	
	    	RemoteValiteResultDTO result = new RemoteValiteResultDTO();
	    	result.setValid(false);
	    	
	    	//从Session取值比对
	    	String strSavedCap = session.getAttribute(NAME).toString();
	    	
	    	if(captcha != null && strSavedCap != null) {
	    		
	    		if(captcha.compareToIgnoreCase(strSavedCap) == 0) {
	    			
	    			result.setValid(true);
	    		}
	    	}

	        return result;
	    }
}

package com.xuexin.wangshen.web.controller;

import static nl.captcha.Captcha.NAME;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuexin.wangshen.model.pojo.RemoteValiteResultDTO;
import com.xuexin.wangshen.model.pojo.UserInfoDO;
import com.xuexin.wangshen.model.pojo.UserInfoInputFormDTO;
import com.xuexin.wangshen.model.pojo.UserLoginInputFormDTO;
import com.xuexin.wangshen.service.GlobalService;
import com.xuexin.wangshen.service.UserInfoService;
import com.xuexin.wangshen.util.ErrorDefines;
import com.xuexin.wangshen.util.WebContextResouceBundleReader;

@Controller
@RequestMapping("/user")
public class UserAction {
	
	private static Logger logger = LoggerFactory.getLogger(UserAction.class);
	
	@Resource(name="globalService")
	private GlobalService service_global;
	
	@Resource(name="userService")
	private UserInfoService service_user;
	
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
	    
	    //用户登陆验证
	    @RequestMapping(value = "/user-logincheck.page", method=RequestMethod.POST)
	    public String userLoginCheck(Model model, @ModelAttribute("user") @Valid UserLoginInputFormDTO user, 
	    		BindingResult bindingResult, HttpServletRequest request, HttpSession session) {
	    	
	    	//服务端输入验证已完成
	    	if(bindingResult.hasErrors()) {
	    		return "page_user_login_failed";
	    	}
	    	
	    	//验证码
	    	String strSavedCap = session.getAttribute(NAME).toString();
	    	if(strSavedCap.compareToIgnoreCase(user.getCaptcha()) != 0) {
	    		
	    		bindingResult.rejectValue("captcha", 
	    								Integer.toHexString(ErrorDefines.E_SVR_CAPTCHA_ERROR), 
	    								WebContextResouceBundleReader.getErrorDescription(ErrorDefines.E_SVR_CAPTCHA_ERROR, request));
	    		
	    		return "page_user_login_failed";
	    	}
	    	
	    	//检查用户存在性
	    	if(service_user.countUserByPhone(user.getPhonenumber()) <= 0) {
	    		
	    		bindingResult.rejectValue("phonenumber", 
						Integer.toHexString(ErrorDefines.E_SVR_PHONE_NOEXIST), 
						WebContextResouceBundleReader.getErrorDescription(ErrorDefines.E_SVR_PHONE_NOEXIST, request));

	    		return "page_user_login_failed";
	    	}
	 
	    	//用户实际检查
	    	UserInfoDO userinfo = service_user.getUserInfo(user);
	    	if(userinfo == null) {
	    		
	    		bindingResult.rejectValue("phonenumber", 
						Integer.toHexString(ErrorDefines.E_SVR_LOGIN_MISMATCH), 
						WebContextResouceBundleReader.getErrorDescription(ErrorDefines.E_SVR_LOGIN_MISMATCH, request));

	    		return "page_user_login_failed";
	    	}
	    	
	    	//通过检查
	    	//TODO: 可以向session保存用户对象

	        return "page_user_wellcome";
	    }
	    
	    //用户注册
	    @RequestMapping(value = "/user-register.page", method=RequestMethod.POST)
	    public String userRegister(Model model, @ModelAttribute("user") @Valid UserInfoInputFormDTO user, 
	    		BindingResult bindingResult, HttpServletRequest request, HttpSession session) {
	    	
	    	//服务端输入验证已完成
	    	if(bindingResult.hasErrors()) {
	    		return "page_user_reg_failed";
	    	}
	    	
	    	//调用service执行插入，事物层级在该层，可能会抛出用户重复的异常
	    	try {
	    		service_user.saveUserInfo(user);
	    		
	    	} catch(RuntimeException e) {
	    		
	    		//解析错误码
	    		model.addAttribute("error", WebContextResouceBundleReader.makeRuntimeErrorInfoByCode(e.getMessage(), request));

	            return "page_runtime_exception";  
	    	}

	        return "page_user_reg_ok";
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
	    
	    //用户号码唯一性验证
	    @RequestMapping(value = "/check-user-validation.json", method=RequestMethod.GET)
	    @ResponseBody
	    public RemoteValiteResultDTO checkUserValidation(Model model, String phonenumber) {
	    		    	
	    	RemoteValiteResultDTO result = new RemoteValiteResultDTO();
	    	result.setValid(false);
	    		    	
	    	//检查号码是否唯一
	    	if(phonenumber != null && phonenumber.length() > 1) {
	    		
	    		if(service_user.countUserByPhone(phonenumber) == 0) {
	    			result.setValid(true);
	    		}
	    	}
	    			
	        return result;
	    }
}

package com.xuexin.wangshen.web.controller;

import static nl.captcha.Captcha.NAME;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.xuexin.wangshen.model.pojo.AdminUserLoginInputFormDTO;
import com.xuexin.wangshen.model.pojo.CommonResultDTO;
import com.xuexin.wangshen.model.pojo.ConfigWxMobileGateDTO;
import com.xuexin.wangshen.model.pojo.RemoteValiteResultDTO;
import com.xuexin.wangshen.model.pojo.UserInSessionDTO;
import com.xuexin.wangshen.model.pojo.UserInfoDO;
import com.xuexin.wangshen.model.pojo.UserInfoInputFormDTO;
import com.xuexin.wangshen.model.pojo.UserLoginInputFormDTO;
import com.xuexin.wangshen.model.pojo.UserPassChangeDTO;
import com.xuexin.wangshen.model.pojo.jdcloud.WxInterfaceResponseDTO;
import com.xuexin.wangshen.service.ConfigService;
import com.xuexin.wangshen.service.GlobalService;
import com.xuexin.wangshen.service.UserInfoService;
import com.xuexin.wangshen.util.ConstConfigDefine;
import com.xuexin.wangshen.util.ErrorDefines;
import com.xuexin.wangshen.util.WebContextResouceBundleReader;
import com.xuexin.wangshen.util.jdcloud.RequestModel;
import com.xuexin.wangshen.util.jdcloud.WxApiCall;

@Controller
@RequestMapping("/user")
public class UserAction {
	
	private static Logger logger = LoggerFactory.getLogger(UserAction.class);
	
	@Resource(name="globalService")
	private GlobalService service_global;
	
	@Resource(name="userService")
	private UserInfoService service_user;
	
	@Resource(name="configService")
	private ConfigService service_config;
	
	//用户欢迎页
    @RequestMapping(value = "/user-wellcome.page", method=RequestMethod.GET)
    public String userWellcome(Model model) {
    	
        return "page_user_wellcome";
    }
    
    //管理员欢迎页
    @RequestMapping(value = "/admin-wellcome.page", method=RequestMethod.GET)
    public String adminWellcome(Model model) {
    	
        return "page_admin_wellcome";
    }
    
    //管理员登陆页GET
    @RequestMapping(value = "/admin-login.page", method=RequestMethod.GET)
    public String adminLogin(Model model, HttpSession session) { 	

        return "page_admin_login";
    }
    
    //管理员登陆验证POST
    @RequestMapping(value = "/admin-login.page", method=RequestMethod.POST)
    public String adminLoginCheck(Model model, @ModelAttribute("user") @Valid AdminUserLoginInputFormDTO user, 
    		BindingResult bindingResult, HttpServletRequest request, HttpSession session) {
    	
    	//服务端输入验证已完成
    	if(bindingResult.hasErrors()) {
    		return "page_admin_login";
    	}
    	
    	//验证码
    	String strSavedCap = session.getAttribute(NAME).toString();
    	if(strSavedCap.compareToIgnoreCase(user.getCaptcha()) != 0) {
    		
    		bindingResult.rejectValue("captcha", 
    								Integer.toHexString(ErrorDefines.E_SVR_CAPTCHA_ERROR), 
    								WebContextResouceBundleReader.getErrorDescription(ErrorDefines.E_SVR_CAPTCHA_ERROR, request));
    		
    		return "page_admin_login";
    	}
    		 
    	//管理员实际检查
    	UserInfoDO userinfo = service_user.getAdminInfo(user);
    	if(userinfo == null) {
    		
    		bindingResult.rejectValue("password", 
					Integer.toHexString(ErrorDefines.E_SVR_LOGIN_MISMATCH), 
					WebContextResouceBundleReader.getErrorDescription(ErrorDefines.E_SVR_LOGIN_MISMATCH, request));

    		return "page_admin_login";
    	}
    	
    	//通过检查，保存到session
    	UserInSessionDTO usersess = new UserInSessionDTO(userinfo);
    	session.setAttribute(ConstConfigDefine.SESSION_NAME_USER, usersess);

    	//跳转到管理员欢迎页
        return "redirect:admin-wellcome.page";
    }
    
    //用户登陆页
    @RequestMapping(value = "/login.page", method=RequestMethod.GET)
    public String userLogin(Model model, HttpSession session) {

        return "page_user_login";
    }
    
    //用户登陆验证
    @RequestMapping(value = "/login.page", method=RequestMethod.POST)
    public String userLoginCheck(Model model, @ModelAttribute("user") @Valid UserLoginInputFormDTO user, 
    		BindingResult bindingResult, HttpServletRequest request, HttpSession session) {
    	
    	//服务端输入验证已完成
    	if(bindingResult.hasErrors()) {
    		return "page_user_login";
    	}
    	
    	//验证码
    	String strSavedCap = session.getAttribute(NAME).toString();
    	if(strSavedCap.compareToIgnoreCase(user.getCaptcha()) != 0) {
    		
    		bindingResult.rejectValue("captcha", 
    								Integer.toHexString(ErrorDefines.E_SVR_CAPTCHA_ERROR), 
    								WebContextResouceBundleReader.getErrorDescription(ErrorDefines.E_SVR_CAPTCHA_ERROR, request));
    		
    		return "page_user_login";
    	}
    	
    	//检查用户存在性
    	if(service_user.countUserByPhone(user.getPhonenumber()) <= 0) {
    		
    		bindingResult.rejectValue("phonenumber", 
					Integer.toHexString(ErrorDefines.E_SVR_PHONE_NOEXIST), 
					WebContextResouceBundleReader.getErrorDescription(ErrorDefines.E_SVR_PHONE_NOEXIST, request));

    		return "page_user_login";
    	}
 
    	//用户实际检查
    	UserInfoDO userinfo = service_user.getUserInfo(user);
    	if(userinfo == null) {
    		
    		bindingResult.rejectValue("password", 
					Integer.toHexString(ErrorDefines.E_SVR_LOGIN_MISMATCH), 
					WebContextResouceBundleReader.getErrorDescription(ErrorDefines.E_SVR_LOGIN_MISMATCH, request));

    		return "page_user_login";
    	}
    	
    	//通过检查，保存到session
    	UserInSessionDTO usersess = new UserInSessionDTO(userinfo);
    	session.setAttribute(ConstConfigDefine.SESSION_NAME_USER, usersess);

    	//跳转到用户欢迎页
        return "redirect:user-wellcome.page";
    }
    	    
    //用户注册
    @RequestMapping(value = "/user-register.page", method=RequestMethod.POST)
    public String userRegister(Model model, @ModelAttribute("user") @Valid UserInfoInputFormDTO user, 
    		BindingResult bindingResult, HttpServletRequest request, HttpSession session) {
    	
    	//服务端输入验证已完成
    	if(bindingResult.hasErrors()) {
    		return "page_user_reg_failed";
    	}
    	
    	//检查手机验证码
    	try {
    		
    		String strValidateCode = (String)session.getAttribute(ConstConfigDefine.SESSION_CODE_WXVAL);
    		if(user.getPhonevalidate().compareToIgnoreCase(strValidateCode) != 0) {
	    		
    			throw new RuntimeException(Integer.toHexString(ErrorDefines.E_SVR_VALIDATE_MISMATCH));
	    	}
    	
    		//调用service执行插入，事物层级在该层，可能会抛出用户重复的异常
    		service_user.saveUserInfo(user);
    		
    	} catch(RuntimeException e) {
    		
    		//解析错误码
    		model.addAttribute("error", WebContextResouceBundleReader.makeRuntimeErrorInfoByCode(e.getMessage(), request));
    		logger.error(e.getMessage());

            return "page_runtime_exception";  
    	}
    	
    	//用户注册成功，清除短信验证码，防止用户利用同一验证码在session有效期内重复注册
    	session.removeAttribute(ConstConfigDefine.SESSION_PREV_WXVAL);
    	session.removeAttribute(ConstConfigDefine.SESSION_CODE_WXVAL);
    	session.removeAttribute(ConstConfigDefine.SESSION_MOBILE_WXVAL);

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
    
    //注册手机验证码
    @RequestMapping(value = "/check-phonecode-validation.json", method=RequestMethod.GET)
    @ResponseBody
    public RemoteValiteResultDTO checkPhoneCodeValidation(Model model, HttpSession session, String phonevalidate) {
    		    	
    	RemoteValiteResultDTO result = new RemoteValiteResultDTO();
    	result.setValid(false);
    		    	
    	//匹配验证码
    	if(phonevalidate != null && phonevalidate.length() > 1) {
    		
    		String strValidateCode = (String)session.getAttribute(ConstConfigDefine.SESSION_CODE_WXVAL);
    		
    		if(strValidateCode != null && strValidateCode.length() > 0) {
    			if(strValidateCode.compareToIgnoreCase(phonevalidate) == 0) {
    				result.setValid(true);
    			}
    		}
    	}
    			
        return result;
    }
    
    //用户登出页
    @RequestMapping(value = "/logout.page", method=RequestMethod.GET)
    public String userLogout(Model model, HttpSession session) {

    	session.removeAttribute(ConstConfigDefine.SESSION_NAME_USER);
        
    	return "redirect:login.page";
    }
    
    //重置密码页
    @RequestMapping(value = "/reset-user-password.page", method=RequestMethod.GET)
    public String resetUserPasswordPage(Model model) {
        
    	return "page_user_resetpass";
    }
    
    //重置密码页
    @RequestMapping(value = "/reset-user-password.page", method=RequestMethod.POST)
    public String resetUserPasswordPost(Model model, @ModelAttribute("user") @Valid UserInfoInputFormDTO user, 
    		BindingResult bindingResult, HttpServletRequest request, HttpSession session) {
        
    	//服务端输入验证已完成
    	if(bindingResult.hasErrors()) {
    		return "page_user_resetpass";
    	}
    	
    	//检查手机验证码
    	try {
    		
    		String strValidateCode = (String)session.getAttribute(ConstConfigDefine.SESSION_CODE_WXVAL);
    		if(user.getPhonevalidate().compareToIgnoreCase(strValidateCode) != 0) {
	    		
    			throw new RuntimeException(Integer.toHexString(ErrorDefines.E_SVR_VALIDATE_MISMATCH));
	    	}
    		
    		//验证号码是否是当前发送手机号，以免利用漏洞重置他人密码
    		String strValidateMobile = (String)session.getAttribute(ConstConfigDefine.SESSION_MOBILE_WXVAL);
    		if(user.getPhonenumber().compareToIgnoreCase(strValidateMobile) != 0) {
    			throw new RuntimeException(Integer.toHexString(ErrorDefines.E_SVR_PHONE_MISMATCH));
    		}
    		
    		//号码是否已经注册
    		int nUID = service_user.getUserIDByMobileNumber(user.getPhonenumber());
    		if(nUID == -1) {
    			//尚未注册，视作错误
    			throw new RuntimeException(Integer.toHexString(ErrorDefines.E_SVR_PHONE_NOEXIST));
    		}
    		
    		//修改密码
    		UserInfoDO userreset = new UserInfoDO();
    		userreset.setnUID(nUID);
    		userreset.setStrMobileNum(user.getPhonenumber());
    		userreset.setStrPassHash(user.getPassword());
    		service_user.updatePassword(userreset);
    		
    	} catch(RuntimeException e) {
    		
    		//解析错误码
    		model.addAttribute("error", WebContextResouceBundleReader.makeRuntimeErrorInfoByCode(e.getMessage(), request));
    		logger.error(e.getMessage());

            return "page_runtime_exception";  
    	}
    	
    	//重置密码成功，清除短信验证码，防止用户利用同一验证码在session有效期内重复注册
    	session.removeAttribute(ConstConfigDefine.SESSION_PREV_WXVAL);
    	session.removeAttribute(ConstConfigDefine.SESSION_CODE_WXVAL);
    	session.removeAttribute(ConstConfigDefine.SESSION_MOBILE_WXVAL);

        return "page_user_reg_ok";
    }
    
    //修改密码页
    @RequestMapping(value = "/changepw.page", method=RequestMethod.GET)
    public String changeUserPasswordPage(Model model) {
        
    	return "page_user_changepw";
    }
    
    //用户修改自身密码
    @RequestMapping(value = "/change-user-password.json", method=RequestMethod.POST, consumes = "application/json")
    @ResponseBody
    public CommonResultDTO changeUserPasswordJSON(Model model, HttpSession session, 
    												@RequestBody UserPassChangeDTO changepass) {
    		    	
    	CommonResultDTO result = new CommonResultDTO();
    	result.setOk(false);
    	
    	//获取当前用户
    	UserInSessionDTO userss = (UserInSessionDTO) session.getAttribute(ConstConfigDefine.SESSION_NAME_USER);
    	UserInfoDO userdo = null;
    		    	
    	//检查用户旧密码
    	if(ConstConfigDefine.SYSTEM_ADMIN_NAME.compareToIgnoreCase(userss.getStrUsername()) == 0) {
    		//管理员修改
    		//验证旧密码
    		AdminUserLoginInputFormDTO admin = new AdminUserLoginInputFormDTO();
    		admin.setAdminuser(userss.getStrUsername());
    		admin.setPassword(changepass.getOldpass());
    		
    		userdo = service_user.getAdminInfo(admin);
    		
    	} else {
    		//普通用户修改
    		//验证旧密码
    		UserLoginInputFormDTO reguser = new UserLoginInputFormDTO();
    		reguser.setPhonenumber(userss.getStrMobile());
    		reguser.setPassword(changepass.getOldpass());
    		
    		userdo = service_user.getUserInfo(reguser);
    	}
    	
    	//旧密码无效
    	if(userdo == null) {
			result.setErrorinfo(ErrorDefines.E_JSON_USERPASSWRONG);
			return result;
		}
		
		//修改密码
		userdo.setStrPassHash(changepass.getNewpass());
		int nEffected = service_user.updatePassword(userdo);
		if(nEffected == 1) {
			result.setOk(true);
		} else {
			result.setErrorinfo(ErrorDefines.E_JSON_NOCHANGE);
		}
    			
        return result;
    }
    
    //发送注册验证码
    @RequestMapping(value = "/send-mobile-validation.json", method=RequestMethod.GET)
    @ResponseBody
    public CommonResultDTO sendMobileValidation(HttpSession session, String mobile) {

    	CommonResultDTO result = new CommonResultDTO();
    	result.setOk(false);
    	
    	//防止flooding，一分钟内禁止重复请求发送
    	Long lLastMilsec = (Long)session.getAttribute(ConstConfigDefine.SESSION_PREV_WXVAL);
    	if(lLastMilsec != null) {
    		if((System.currentTimeMillis() - lLastMilsec.longValue()) < 55*1000) {
    			
    			result.setErrorinfo(ErrorDefines.E_JSON_FLOODING);
    			return result;
    		}
    	}
    	
    	//获取短信网关配置
    	ConfigWxMobileGateDTO config = service_config.getWxMobileConfig();
    	
    	//检查配置
    	if(config == null || config.getUri() == null || config.getAppkey() == null || config.getContent() == null) {
    		result.setErrorinfo(ErrorDefines.E_JSON_SYSCONFIG);
    		return result;
    	}
    	
    	RequestModel model = new RequestModel();
		model.setGwUrl(config.getUri());
		model.setAppkey(config.getAppkey());
		
		//短信信息
        Random rd = new Random(System.currentTimeMillis());
        String strValidateNum = String.format("%04d", rd.nextInt(9999));
        String strContent = config.getContent().replaceAll("\\*",strValidateNum);
		
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("mobile", mobile); 		//手机号码
		queryMap.put("content", strContent); 	//短信内容
		model.setQueryParams(queryMap);
		
		//执行请求
		WxApiCall call = new WxApiCall();
		call.setModel(model);
		String strResp = call.request();
		
		//检查反馈
		if(strResp != null && strResp.length() > 0) {
			WxInterfaceResponseDTO resp = JSON.parseObject(strResp, WxInterfaceResponseDTO.class);
			
			//执行成功
			if(resp != null && resp.getCode() != null && resp.getCode().compareTo("10000") == 0) {
				result.setOk(true);
				
				//记录session时间戳和验证码
				session.setAttribute(ConstConfigDefine.SESSION_PREV_WXVAL, Long.valueOf(System.currentTimeMillis()));
				session.setAttribute(ConstConfigDefine.SESSION_CODE_WXVAL, strValidateNum);
				session.setAttribute(ConstConfigDefine.SESSION_MOBILE_WXVAL, mobile);
				
				return result;
			}
		}
		
		//记录错误信息
		logger.error(strResp);
        
    	return result;
    }
}

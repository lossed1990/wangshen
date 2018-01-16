package com.xuexin.wangshen.util;

public class ErrorDefines {

	public static final int E_OK							= 0x0;
	
	public static final int E_SVR_USER_DUMPLICATE			= 0x2001;		//用户重复
	public static final int E_SVR_CAPTCHA_ERROR				= 0x2002;		//验证码不正确
	public static final int E_SVR_PHONE_NOEXIST				= 0x2003;		//手机号码未注册
	public static final int E_SVR_LOGIN_MISMATCH			= 0x2004;		//用户密码错误
}

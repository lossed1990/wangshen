package com.xuexin.wangshen.util;

public class ErrorDefines {

	public static final int E_OK							= 0x0;
	
	public static final int E_SVR_USER_DUMPLICATE			= 0x2001;		//用户重复
	public static final int E_SVR_CAPTCHA_ERROR				= 0x2002;		//验证码不正确
	public static final int E_SVR_PHONE_NOEXIST				= 0x2003;		//手机号码未注册
	public static final int E_SVR_LOGIN_MISMATCH			= 0x2004;		//用户密码错误
	
	public static final int E_SVR_RUNTIME_BADINPUT			= 0x5001;		//填写有误
	public static final int E_SVR_RUNTIME_DBFAILED			= 0x5002;		//数据库操作失败
	
	public static final String E_JSON_FILE_PART				= "E100	文件未完全上传";
	public static final String E_JSON_FILE_REMOTE			= "E101	服务器文件操作异常";
	public static final String E_JSON_FILE_DB				= "E102	保存文件到数据库异常";
	
	public static final String E_JSON_BADPARAM				= "E200	传入JSON参数格式有误";
	public static final String E_JSON_NODATA				= "E201	查询结果不存在";
	public static final String E_JSON_NOCHANGE				= "E202	未修改任何数据";
}

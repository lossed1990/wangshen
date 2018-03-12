package com.xuexin.wangshen.util;

public class ErrorDefines {

	public static final int E_OK							= 0x0;
	
	public static final int E_SVR_USER_DUMPLICATE			= 0x2001;		//用户重复
	public static final int E_SVR_CAPTCHA_ERROR				= 0x2002;		//验证码不正确
	public static final int E_SVR_PHONE_NOEXIST				= 0x2003;		//手机号码未注册
	public static final int E_SVR_LOGIN_MISMATCH			= 0x2004;		//用户密码错误
	public static final int E_SVR_VALIDATE_MISMATCH			= 0x2005;		//手机校验码不一致
	public static final int E_SVR_PHONE_MISMATCH			= 0x2006;		//验证手机号不一致
	
	public static final int E_SVR_RUNTIME_BADINPUT			= 0x5001;		//填写有误
	public static final int E_SVR_RUNTIME_DBFAILED			= 0x5002;		//数据库操作失败
	public static final int E_SVR_RUNTIME_NOPARAM			= 0x5003;		//参数缺失
	public static final int E_SVR_RUNTIME_NODATA			= 0x5004;		//数据不存在
	public static final int E_SVR_RUNTIME_IO				= 0x5005;		//服务器IO错误
	
	public static final String E_JSON_FILE_PART				= "E100	文件未完全上传";
	public static final String E_JSON_FILE_REMOTE			= "E101	服务器文件操作异常";
	public static final String E_JSON_FILE_DB				= "E102	保存文件到数据库异常";
	
	public static final String E_JSON_BADPARAM				= "E200	传入JSON参数格式有误";
	public static final String E_JSON_NODATA				= "E201	查询结果不存在";
	public static final String E_JSON_NOCHANGE				= "E202	未修改任何数据";
	public static final String E_JSON_LACKPARAM				= "E203	参数缺失";
	public static final String E_JSON_FLOODING				= "E204	请求过于频繁";
	public static final String E_JSON_SYSCONFIG				= "E205	系统配置不正确";
	public static final String E_JSON_BADDATA				= "E206	系统脏数据";
	
	public static final String E_JSON_USERPASSWRONG			= "E301	用户旧密码错误";
	
	public static final String E_JSON_RESUME_BAD			= "E801	简历有绝对不合格项目，简历视为无效";
}

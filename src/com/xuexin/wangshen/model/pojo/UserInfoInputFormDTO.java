package com.xuexin.wangshen.model.pojo;

//用户注册表填项
public class UserInfoInputFormDTO {

	private String strUserPhone;				//用户手机号
	private String strPhoneValidateCode;		//手机校验码
	private String strUserPass;					//用户密码
	private String strUserConfirmPass;			//用户重输入密码
	
	public String getStrUserPhone() {
		return strUserPhone;
	}
	public void setStrUserPhone(String strUserPhone) {
		this.strUserPhone = strUserPhone;
	}
	public String getStrPhoneValidateCode() {
		return strPhoneValidateCode;
	}
	public void setStrPhoneValidateCode(String strPhoneValidateCode) {
		this.strPhoneValidateCode = strPhoneValidateCode;
	}
	public String getStrUserPass() {
		return strUserPass;
	}
	public void setStrUserPass(String strUserPass) {
		this.strUserPass = strUserPass;
	}
	public String getStrUserConfirmPass() {
		return strUserConfirmPass;
	}
	public void setStrUserConfirmPass(String strUserConfirmPass) {
		this.strUserConfirmPass = strUserConfirmPass;
	}
}

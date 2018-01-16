package com.xuexin.wangshen.model.pojo;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

/*
 * 用户登陆表填写项目
 */
public class UserLoginInputFormDTO {

	@NotEmpty(message = "{vm.user.reg.phone.empty}")
	@Pattern(regexp = "^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\\d{8}$", message = "{vm.user.reg.phone.invalid}")
	private String phonenumber;		//电话
	
	@NotEmpty(message = "{vm.user.reg.pass.empty}")
	private String password;		//密码
	
	@NotEmpty(message = "{vm.user.reg.captcha.empty}")
	private String captcha;			//验证码
	
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCaptcha() {
		return captcha;
	}
	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}
}

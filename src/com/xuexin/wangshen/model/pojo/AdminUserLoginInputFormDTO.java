package com.xuexin.wangshen.model.pojo;

import org.hibernate.validator.constraints.NotEmpty;

public class AdminUserLoginInputFormDTO {

	@NotEmpty(message = "管理员用户名不得为空")
	private String adminuser;			//管理员用户名
	
	@NotEmpty(message = "管理员密码不得为空")
	private String password;			//管理员密码
	
	@NotEmpty(message = "验证码不得为空")
	private String captcha;				//验证码
	
	
	public String getAdminuser() {
		return adminuser;
	}
	public void setAdminuser(String adminuser) {
		this.adminuser = adminuser;
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

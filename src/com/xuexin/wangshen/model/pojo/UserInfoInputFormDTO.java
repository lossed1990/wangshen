package com.xuexin.wangshen.model.pojo;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

//用户注册表填项
public class UserInfoInputFormDTO {

	@NotEmpty(message = "{vm.user.reg.phone.empty}")
	@Pattern(regexp = "^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\\d{8}$", message = "{vm.user.reg.phone.invalid}")
	private String phonenumber;				//用户手机号
	
	@NotEmpty(message = "{vm.user.reg.phonevalidate.empty}")
	private String phonevalidate;			//手机校验码
	
	@NotEmpty(message = "{vm.user.reg.pass.empty}")
	@Length(min=6, max=128, message = "{vm.user.reg.pass.length}")
	private String password;				//用户密码
	
	@NotEmpty(message = "{vm.user.reg.pass.empty}")
	@Length(min=6, max=30, message = "{vm.user.reg.pass.length}")
	private String confirmPassword;			//用户重输入密码
	
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getPhonevalidate() {
		return phonevalidate;
	}
	public void setPhonevalidate(String phonevalidate) {
		this.phonevalidate = phonevalidate;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
}

package com.xuexin.wangshen.model.pojo;

public class UserPassChangeDTO {

	private String oldpass;			//旧密码hash
	private String newpass;			//新密码
	private String newpass_confirm;	//确认密码
	
	public String getOldpass() {
		return oldpass;
	}
	public void setOldpass(String oldpass) {
		this.oldpass = oldpass;
	}
	public String getNewpass() {
		return newpass;
	}
	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}
	public String getNewpass_confirm() {
		return newpass_confirm;
	}
	public void setNewpass_confirm(String newpass_confirm) {
		this.newpass_confirm = newpass_confirm;
	}
}

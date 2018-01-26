package com.xuexin.wangshen.model.pojo;

/*
 * 模板使能DTO
 */
public class ResumeTemplateModEnableDTO {

	private String temp_id;				//模板id
	private boolean enable;				//使能
	
	public String getTemp_id() {
		return temp_id;
	}
	public void setTemp_id(String temp_id) {
		this.temp_id = temp_id;
	}
	public boolean isEnable() {
		return enable;
	}
	public void setEnable(boolean enable) {
		this.enable = enable;
	}
}

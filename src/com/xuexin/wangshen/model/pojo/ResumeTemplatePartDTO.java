package com.xuexin.wangshen.model.pojo;

/*
 * 修改模板部分
 */
public class ResumeTemplatePartDTO {

	private String temp_id;			//模板id
	private String key;				//模板模块名称
	private Object value;			//模板模块定义
	
	public String getTemp_id() {
		return temp_id;
	}
	public void setTemp_id(String temp_id) {
		this.temp_id = temp_id;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public Object getValue() {
		return value;
	}
	public void setValue(Object value) {
		this.value = value;
	}
}

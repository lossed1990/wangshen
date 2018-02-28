package com.xuexin.wangshen.model.pojo;

/*
 * 基础数据-简历区块信息
 */
public class BasicDataResumeSectionsDO {

	private String section_key;		//模块代码
	private String section_name;	//模块名称
	
	public String getSection_key() {
		return section_key;
	}
	public void setSection_key(String section_key) {
		this.section_key = section_key;
	}
	public String getSection_name() {
		return section_name;
	}
	public void setSection_name(String section_name) {
		this.section_name = section_name;
	}
}

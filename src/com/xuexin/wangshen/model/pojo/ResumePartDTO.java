package com.xuexin.wangshen.model.pojo;

public class ResumePartDTO {

	private String resume_id;			//简历id
	private String section_name;		//简历模块
	private Object value;				//简历内容
	
	public String getResume_id() {
		return resume_id;
	}
	public void setResume_id(String resume_id) {
		this.resume_id = resume_id;
	}
	public String getSection_name() {
		return section_name;
	}
	public void setSection_name(String section_name) {
		this.section_name = section_name;
	}
	public Object getValue() {
		return value;
	}
	public void setValue(Object value) {
		this.value = value;
	}
}

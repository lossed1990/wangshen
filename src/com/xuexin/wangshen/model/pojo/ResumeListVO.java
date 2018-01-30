package com.xuexin.wangshen.model.pojo;

/*
 * 简历列表VO对象
 */
public class ResumeListVO {

	private ResumeDO resume;			//简历
		
	private String resume_id;			//简历guid，冗余数据便于遍历
	private String tmplname;			//对应模板名称
	private String tmplpic;				//对应模板封面
	
	public ResumeDO getResume() {
		return resume;
	}
	public void setResume(ResumeDO resume) {
		this.resume = resume;
	}
	public String getTmplname() {
		return tmplname;
	}
	public void setTmplname(String tmplname) {
		this.tmplname = tmplname;
	}
	public String getTmplpic() {
		return tmplpic;
	}
	public void setTmplpic(String tmplpic) {
		this.tmplpic = tmplpic;
	}
	public String getResume_id() {
		return resume_id;
	}
	public void setResume_id(String resume_id) {
		this.resume_id = resume_id;
	}
}

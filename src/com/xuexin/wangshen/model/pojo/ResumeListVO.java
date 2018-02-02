package com.xuexin.wangshen.model.pojo;

import com.alibaba.fastjson.annotation.JSONField;

/*
 * 简历列表VO对象
 */
public class ResumeListVO {

	private String resume_id;			//简历guid
	private String resume_name;			//简历名称，预留
	private int tmplid;					//对应模板id
	private String tmplname;			//对应模板名称
	private String tmplpic;				//对应模板封面
	private int userid;					//创建简历用户id
	private String usermobile;			//创建简历用户手机号
	private int nlastmoduser;			//最后修改简历的用户id
	
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private java.sql.Timestamp lastmodtime;	//最后修改时间
	
	public String getResume_id() {
		return resume_id;
	}
	public void setResume_id(String resume_id) {
		this.resume_id = resume_id;
	}
	public String getResume_name() {
		return resume_name;
	}
	public void setResume_name(String resume_name) {
		this.resume_name = resume_name;
	}
	public int getTmplid() {
		return tmplid;
	}
	public void setTmplid(int tmplid) {
		this.tmplid = tmplid;
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
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsermobile() {
		return usermobile;
	}
	public void setUsermobile(String usermobile) {
		this.usermobile = usermobile;
	}
	public int getNlastmoduser() {
		return nlastmoduser;
	}
	public void setNlastmoduser(int nlastmoduser) {
		this.nlastmoduser = nlastmoduser;
	}
	public java.sql.Timestamp getLastmodtime() {
		return lastmodtime;
	}
	public void setLastmodtime(java.sql.Timestamp lastmodtime) {
		this.lastmodtime = lastmodtime;
	}
}

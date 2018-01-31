package com.xuexin.wangshen.model.pojo;

import java.text.SimpleDateFormat;

public class ResumeDO {
	private String strResumeGUID;			//简历GUID
	private String strResumeName;			//简历名称
	private int nTemplateID;				//简历对应模板iD
	private int nUserID;					//简历所有人id
	private String strResumeJOSN;			//简历JSON
	private int nLastModUserID;				//最后编辑用户ID
	private java.sql.Timestamp tsLastModified;	//最后修改时间
	
	//根据GUID和最后编辑时间戳生成唯一名称
	public String getUniqueName() {
		return strResumeGUID + "-" + new SimpleDateFormat("yyyyMMddHHmmss").format(tsLastModified);
	}
	
	public String getStrResumeGUID() {
		return strResumeGUID;
	}
	public void setStrResumeGUID(String strResumeGUID) {
		this.strResumeGUID = strResumeGUID;
	}
	public String getStrResumeName() {
		return strResumeName;
	}
	public void setStrResumeName(String strResumeName) {
		this.strResumeName = strResumeName;
	}
	public int getnTemplateID() {
		return nTemplateID;
	}
	public void setnTemplateID(int nTemplateID) {
		this.nTemplateID = nTemplateID;
	}
	public int getnUserID() {
		return nUserID;
	}
	public void setnUserID(int nUserID) {
		this.nUserID = nUserID;
	}
	public String getStrResumeJOSN() {
		return strResumeJOSN;
	}
	public void setStrResumeJOSN(String strResumeJOSN) {
		this.strResumeJOSN = strResumeJOSN;
	}
	public int getnLastModUserID() {
		return nLastModUserID;
	}
	public void setnLastModUserID(int nLastModUserID) {
		this.nLastModUserID = nLastModUserID;
	}
	public java.sql.Timestamp getTsLastModified() {
		return tsLastModified;
	}
	public void setTsLastModified(java.sql.Timestamp tsLastModified) {
		this.tsLastModified = tsLastModified;
	}
}

package com.xuexin.wangshen.model.pojo;

/*
 * 模板数据对象
 */
public class ResumeTemplateDO {

	private int nTempID;		//模板ID
	private String strTempName;	//模板名
	private String strTempInfo;	//模板描述
	private String strTempPic;	//模板封面
	private String strTempJson;	//模板JSON
	private java.sql.Timestamp tsLastModified;	//最后修改时间
	private boolean bEnable;	//是否启用模板
	
	public int getnTempID() {
		return nTempID;
	}
	public void setnTempID(int nTempID) {
		this.nTempID = nTempID;
	}
	public String getStrTempName() {
		return strTempName;
	}
	public void setStrTempName(String strTempName) {
		this.strTempName = strTempName;
	}
	public String getStrTempInfo() {
		return strTempInfo;
	}
	public void setStrTempInfo(String strTempInfo) {
		this.strTempInfo = strTempInfo;
	}
	public String getStrTempPic() {
		return strTempPic;
	}
	public void setStrTempPic(String strTempPic) {
		this.strTempPic = strTempPic;
	}
	public String getStrTempJson() {
		return strTempJson;
	}
	public void setStrTempJson(String strTempJson) {
		this.strTempJson = strTempJson;
	}
	public java.sql.Timestamp getTsLastModified() {
		return tsLastModified;
	}
	public void setTsLastModified(java.sql.Timestamp tsLastModified) {
		this.tsLastModified = tsLastModified;
	}
	public boolean isbEnable() {
		return bEnable;
	}
	public void setbEnable(boolean bEnable) {
		this.bEnable = bEnable;
	}
}

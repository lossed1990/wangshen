package com.xuexin.wangshen.model.pojo;

/*
 * 广告对象
 */
public class AdsDO {

	private int nType;			//广告类型
	private String strName;		//广告简明
	private int nInfoType;		//广告内容声明
	private String strInfo;		//广告内容
	private java.sql.Timestamp tsLastModifiedTime;	//最后修改时间
	
	public int getnType() {
		return nType;
	}
	public void setnType(int nType) {
		this.nType = nType;
	}
	public String getStrName() {
		return strName;
	}
	public void setStrName(String strName) {
		this.strName = strName;
	}
	public int getnInfoType() {
		return nInfoType;
	}
	public void setnInfoType(int nInfoType) {
		this.nInfoType = nInfoType;
	}
	public String getStrInfo() {
		return strInfo;
	}
	public void setStrInfo(String strInfo) {
		this.strInfo = strInfo;
	}
	public java.sql.Timestamp getTsLastModifiedTime() {
		return tsLastModifiedTime;
	}
	public void setTsLastModifiedTime(java.sql.Timestamp tsLastModifiedTime) {
		this.tsLastModifiedTime = tsLastModifiedTime;
	}
}

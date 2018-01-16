package com.xuexin.wangshen.model.pojo;

//用户信息数据对象
public class UserInfoDO {
	
	private int nUID;				//用户自增ID
	private String strUsername;		//用户名
	private String strMobileNum;	//手机号码
	private String strPassHash;		//密码hash
	private java.sql.Timestamp tsRegisterTime;	//注册时间
	private java.sql.Timestamp tsLastModifiedTime;	//最后修改时间
	private boolean bDeleteFlag;		//删除标志
	
	public int getnUID() {
		return nUID;
	}
	public void setnUID(int nUID) {
		this.nUID = nUID;
	}
	public String getStrUsername() {
		return strUsername;
	}
	public void setStrUsername(String strUsername) {
		this.strUsername = strUsername;
	}
	public String getStrMobileNum() {
		return strMobileNum;
	}
	public void setStrMobileNum(String strMobileNum) {
		this.strMobileNum = strMobileNum;
	}
	public String getStrPassHash() {
		return strPassHash;
	}
	public void setStrPassHash(String strPassHash) {
		this.strPassHash = strPassHash;
	}
	public boolean isbDeleteFlag() {
		return bDeleteFlag;
	}
	public void setbDeleteFlag(boolean bDeleteFlag) {
		this.bDeleteFlag = bDeleteFlag;
	}
	public java.sql.Timestamp getTsRegisterTime() {
		return tsRegisterTime;
	}
	public void setTsRegisterTime(java.sql.Timestamp tsRegisterTime) {
		this.tsRegisterTime = tsRegisterTime;
	}
	public java.sql.Timestamp getTsLastModifiedTime() {
		return tsLastModifiedTime;
	}
	public void setTsLastModifiedTime(java.sql.Timestamp tsLastModifiedTime) {
		this.tsLastModifiedTime = tsLastModifiedTime;
	}
}

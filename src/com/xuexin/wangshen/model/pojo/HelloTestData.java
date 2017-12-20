package com.xuexin.wangshen.model.pojo;

import java.sql.Date;

public class HelloTestData {

	private int nAge;
	private boolean bIsMale;
	private String strName;
	private String strAddr;
	private Date dtNow;
	
	public int getnAge() {
		return nAge;
	}
	public void setnAge(int nAge) {
		this.nAge = nAge;
	}
	public boolean isbIsMale() {
		return bIsMale;
	}
	public void setbIsMale(boolean bIsMale) {
		this.bIsMale = bIsMale;
	}
	public String getStrName() {
		return strName;
	}
	public void setStrName(String strName) {
		this.strName = strName;
	}
	public String getStrAddr() {
		return strAddr;
	}
	public void setStrAddr(String strAddr) {
		this.strAddr = strAddr;
	}
	public Date getDtNow() {
		return dtNow;
	}
	public void setDtNow(Date dtNow) {
		this.dtNow = dtNow;
	}
}

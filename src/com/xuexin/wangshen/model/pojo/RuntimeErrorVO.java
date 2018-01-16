package com.xuexin.wangshen.model.pojo;

/*
 * 运行时错误VO
 */
public class RuntimeErrorVO {

	private String strErrorCode;			//错误码
	private String strErrorInfo;			//错误描述

	public RuntimeErrorVO(String strErrorCode, String strErrorInfo) {

		this.strErrorCode = strErrorCode;
		this.strErrorInfo = strErrorInfo;
	}
	
	public String getStrErrorCode() {
		return strErrorCode;
	}
	public void setStrErrorCode(String strErrorCode) {
		this.strErrorCode = strErrorCode;
	}
	public String getStrErrorInfo() {
		return strErrorInfo;
	}
	public void setStrErrorInfo(String strErrorInfo) {
		this.strErrorInfo = strErrorInfo;
	}
}

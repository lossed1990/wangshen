package com.xuexin.wangshen.model.pojo;

/*
 * 通用异步接口反馈JSON
 */
public class CommonResultDTO {

	private boolean ok;			//是否调用成功
	private String errorinfo;	//如果有错误，错误信息
	private Object result;		//输出结果，不同接口反馈不同
	
	public CommonResultDTO() {
		ok = false;
	}
	
	public boolean isOk() {
		return ok;
	}
	public void setOk(boolean ok) {
		this.ok = ok;
	}
	public String getErrorinfo() {
		return errorinfo;
	}
	public void setErrorinfo(String errorinfo) {
		this.errorinfo = errorinfo;
	}
	public Object getResult() {
		return result;
	}
	public void setResult(Object result) {
		this.result = result;
	}
}

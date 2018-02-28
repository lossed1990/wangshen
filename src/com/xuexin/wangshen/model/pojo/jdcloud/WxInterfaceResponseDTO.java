package com.xuexin.wangshen.model.pojo.jdcloud;

public class WxInterfaceResponseDTO {

	private String code;
	private boolean charge;
	private String msg;
	private String result;
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public boolean isCharge() {
		return charge;
	}
	public void setCharge(boolean charge) {
		this.charge = charge;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
}

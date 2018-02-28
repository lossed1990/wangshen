package com.xuexin.wangshen.model.pojo.charts;

/*
 * 用于柱状图的数值对
 */
public class BarChartVO {

	private String key;
	private double value;
	
	public BarChartVO(String pkey, double pvalue) {
		key = pkey;
		value = pvalue;
	}
	
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public double getValue() {
		return value;
	}
	public void setValue(double value) {
		this.value = value;
	}
}

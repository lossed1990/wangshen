package com.xuexin.wangshen.util.calmarks;

import com.alibaba.fastjson.JSONObject;

/*
 * 无效计算器
 */
public class MarksCaculatorInvalid extends MarksCaculator {

	@Override
	public int getType() {
		return -1;
	}

	@Override
	public double calMarks(Object o, JSONObject objJudge, JSONObject objRes) {
		return Double.NaN;
	}

}

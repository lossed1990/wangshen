package com.xuexin.wangshen.util.calmarks;

import com.alibaba.fastjson.JSONObject;

public abstract class MarksCaculator {
	
	public abstract double calMarks(Object o, JSONObject objJudge, JSONObject objRes);			//计算分数
	public abstract int getType();																//评分类型
}

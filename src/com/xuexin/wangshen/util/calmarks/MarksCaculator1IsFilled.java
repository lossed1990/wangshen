package com.xuexin.wangshen.util.calmarks;

import com.alibaba.fastjson.JSONObject;

/*
 * 是否填写
 */
public class MarksCaculator1IsFilled extends MarksCaculator {

	@Override
	public int getType() {
		return 1;
	}

	@Override
	public double calMarks(Object o, JSONObject objJudge, JSONObject objRes) {
		
		//未填写，得0分
		if(o == null) return 0;
		
		//填写为空，得0分
		if(o instanceof String) {
			if(((String) o).length() == 0) {
				return 0;
			}
		}
		
		//其他情况得分
		return (double)objJudge.getFloatValue("score");
	}

}

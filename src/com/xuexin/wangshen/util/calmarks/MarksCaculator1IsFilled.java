package com.xuexin.wangshen.util.calmarks;

import java.util.List;

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
		
		double dbScore = objJudge.getFloatValue("score");
		
		//填写为空，得0分
		if(o instanceof String) 
		{
			return calSingle((String) o, dbScore);
		} 
		else if(o instanceof List<?>) 
		{
			return calList((List<?>) o, dbScore);
		}
		
		//其他情况得分0
		return 0;
	}
	
	//单个
	private double calSingle(String strValue, double dbScore) {
		if(strValue.length() == 0) {
			return 0;
		}
		
		return dbScore;
	}

	//数组
	private double calList(List<?> lstValues, double dbScore) {
		
		double dbTotal = 0;
		for (int i = 0; i < lstValues.size(); i++) {
			Object c = lstValues.get(i);
			
			//一维数组，直接累加
			if(c instanceof String) 
			{
				dbTotal += calSingle((String)c, dbScore);
			}
			else if(c instanceof List<?>)
			{
				//多维数组，递归遍历
				dbTotal += calList((List<?>) c, dbScore);
			}
		}
		
		return dbTotal;
	}
}

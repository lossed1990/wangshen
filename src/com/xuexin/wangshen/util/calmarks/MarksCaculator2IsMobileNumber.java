package com.xuexin.wangshen.util.calmarks;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.alibaba.fastjson.JSONObject;

/*
 * 是否是手机号
 */
public class MarksCaculator2IsMobileNumber extends MarksCaculator {

	@Override
	public int getType() {
		return 2;
	}

	@Override
	public double calMarks(Object o, JSONObject objJudge, JSONObject objRes) {
		//未填写，得0分
		if(o == null) return 0;
		
		double dbScore = (double)objJudge.getFloatValue("score");
		
		if(o instanceof String) {
			return calSingle((String) o, dbScore);
		}
		else if(o instanceof List<?>)
		{
			return calList((List<?>) o, dbScore);
		}
		
		return 0;
	}
	
	//单个
	private double calSingle(String strValue, double dbScore) {
		//不是合法手机号，得0分
		String regex = "^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(17[013678])|(18[0,5-9]))\\d{8}$";
        Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(strValue);
        
        if(!m.matches()) {
        	return 0;
        }
		
		//其他情况得分
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

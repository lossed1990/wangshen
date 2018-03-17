package com.xuexin.wangshen.util.calmarks;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.alibaba.fastjson.JSONObject;

/*
 * 是否是身份证号
 */
public class MarksCaculator3IsIDCard extends MarksCaculator {

	@Override
	public int getType() {
		return 3;
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
		String regex = "^[1-9]\\d{5}(18|19|([23]\\d))\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$";
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

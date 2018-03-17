package com.xuexin.wangshen.util.calmarks;

import java.util.List;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

/*
 * 字数
 */
public class MarksCaculator7WordCount extends MarksCaculator {

	@Override
	public int getType() {
		return 7;
	}

	@Override
	public double calMarks(Object o, JSONObject objJudge, JSONObject objRes) {
		//未填写，得0分
		if(o == null) return 0;
		
		if(o instanceof String) {
			return calSingle((String) o, objJudge);
		}
		else if(o instanceof List<?>)
		{
			return calList((List<?>) o, objJudge);
		}
		
		return 0;
	}

	//计算区间
	private double calWordCountStep(int nLength, JSONArray steps) {

		for(int i=0; i<steps.size(); i++) {
			JSONObject objLevel = steps.getJSONObject(i);
			
			int nBegin = objLevel.getIntValue("begin");
			int nEnd = objLevel.getIntValue("end");
			double dbScore = (double)objLevel.getFloatValue("score");
			
			//满足区间
			if(nLength >= nBegin && nLength <= nEnd) {			
				return dbScore;
			}
		}
		
		return 0;
	}
	
	//单个
	private double calSingle(String strValue, JSONObject objJudge) {
		int nLength = strValue.length();
		
		//计算分数
		if(objJudge.containsKey("rule")) {
			return calWordCountStep(nLength, objJudge.getJSONArray("rule"));
		}
		
		return 0;
	}

	//数组
	private double calList(List<?> lstValues, JSONObject objJudge) {
		
		double dbTotal = 0;
		for (int i = 0; i < lstValues.size(); i++) {
			Object c = lstValues.get(i);
			
			//一维数组，直接累加
			if(c instanceof String) 
			{
				dbTotal += calSingle((String)c, objJudge);
			}
			else if(c instanceof List<?>)
			{
				//多维数组，递归遍历
				dbTotal += calList((List<?>) c, objJudge);
			}
		}
		
		return dbTotal;
	}

}

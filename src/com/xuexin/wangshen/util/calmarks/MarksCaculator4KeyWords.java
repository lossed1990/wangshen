package com.xuexin.wangshen.util.calmarks;

import java.util.List;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

/*
 * 关键词
 */
public class MarksCaculator4KeyWords extends MarksCaculator {

	@Override
	public int getType() {
		return 4;
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

	//单个
	private double calSingle(String strValue, JSONObject objJudge) {
		//遍历关键词规则
		double dbTotal = 0;
		JSONArray arrWords = objJudge.getJSONArray("rule");
		for(int i = 0; i < arrWords.size(); i++) {
			JSONObject word = arrWords.getJSONObject(i);
			
			String keyWord = word.getString("key");
			double dbScore = (double)word.getFloatValue("score");
			
			if(strValue.indexOf(keyWord) != -1) {
				dbTotal += dbScore;
			}
		}
		
		return dbTotal;
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

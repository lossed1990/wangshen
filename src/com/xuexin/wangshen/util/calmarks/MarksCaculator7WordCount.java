package com.xuexin.wangshen.util.calmarks;

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
		
		//非字符串，得0分
		if(!(o instanceof String)) {
			return 0;
		}
		
		String strValue = (String)o;
		int nLength = strValue.length();
		
		//计算分数
		if(objJudge.containsKey("rule")) {
			return calWordCountStep(nLength, objJudge.getJSONArray("rule"));
		}
		
		return 0;
	}

	//计算区间
	private double calWordCountStep(int nLength, JSONArray steps) {

		for(int i=0; i<steps.size(); i++) {
			JSONObject objLevel = steps.getJSONObject(i);
			
			int nBegin = objLevel.getIntValue("begin");
			int nEnd = objLevel.getIntValue("end");
			int nScore = objLevel.getIntValue("score");
			
			//满足区间
			if(nLength >= nBegin && nLength <= nEnd) {			
				return (double)nScore;
			}
		}
		
		return 0;
	}

}

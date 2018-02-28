package com.xuexin.wangshen.util.calmarks;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

/*
 * 体重
 */
public class MarksCaculator6HummanWeight extends MarksCaculator {

	@Override
	public int getType() {
		return 6;
	}

	@Override
	public double calMarks(Object o, JSONObject objJudge, JSONObject objRes) {
		//未填写，得0分
		if(o == null) return 0;
		
		//非数字，得0分
		if(!(o instanceof Integer)) {
			return 0;
		}
		
		Integer nWeightKg = (Integer)o;
				
		//计算分数
		if(objJudge.containsKey("rule")) {
			
			return calWeightStep(nWeightKg.intValue(), objJudge.getJSONArray("rule"));
		}
		
		return 0;
	}

	//计算区间
	private double calWeightStep(int nWeightKg, JSONArray steps) {
		//遍历体重区间
		for(int i=0; i<steps.size(); i++) {
			JSONObject objLevel = steps.getJSONObject(i);
			
			int nBegin = objLevel.getIntValue("begin");
			int nEnd = objLevel.getIntValue("end");
			int nScore = objLevel.getIntValue("score");
			boolean bFlag = objLevel.getBooleanValue("flag");
			
			//满足区间
			if(nWeightKg >= nBegin && nWeightKg <= nEnd) {
				if(bFlag) {
					//硬性条件，整个简历0分，此处返回负最值，特殊处理
					return Double.NEGATIVE_INFINITY;
				}
				
				return (double)nScore;
			}
		}
		
		return 0;
	}

}

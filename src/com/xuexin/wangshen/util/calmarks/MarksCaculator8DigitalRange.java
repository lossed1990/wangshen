package com.xuexin.wangshen.util.calmarks;

import java.util.List;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

/*
 * 数字范围
 */
public class MarksCaculator8DigitalRange extends MarksCaculator {

	@Override
	public int getType() {
		return 8;
	}

	@Override
	public double calMarks(Object o, JSONObject objJudge, JSONObject objRes) {
		//未填写，得0分
		if(o == null) return 0;
		
		//计算分数
		if(objJudge.containsKey("rule")) {
			
			JSONArray steps = objJudge.getJSONArray("rule");
			
			//如果是单数字
			if(o instanceof Integer) 
			{
				return calRangeStep(((Integer)o).intValue(), steps);
			}
			else if(o instanceof List<?>)
			{
				return calListRangeStep((List<?>) o, steps);
			}
		}

		return 0;
	}

	//计算区间
	private double calRangeStep(int nValue, JSONArray steps) {

		for(int i=0; i<steps.size(); i++) {
			JSONObject objLevel = steps.getJSONObject(i);
			
			int nBegin = objLevel.getIntValue("begin");
			int nEnd = objLevel.getIntValue("end");
			double dbScore = (double)objLevel.getFloatValue("score");
			
			//满足区间
			if(nValue >= nBegin && nValue <= nEnd) {			
				return dbScore;
			}
		}
		
		return 0;
	}
	
	//数组区间
	private double calListRangeStep(List<?> lstValues, JSONArray steps) {
		
		double dbTotal = 0;
		for (int i = 0; i < lstValues.size(); i++) {
			Object c = lstValues.get(i);
			
			//一维数组，直接累加
			if(c instanceof Integer) 
			{
				dbTotal += calRangeStep(((Integer) c).intValue(), steps);
			}
			else if(c instanceof List<?>)
			{
				//多维数组，递归遍历
				dbTotal += calListRangeStep((List<?>) c, steps);
			}
		}
		
		return dbTotal;
	}
}

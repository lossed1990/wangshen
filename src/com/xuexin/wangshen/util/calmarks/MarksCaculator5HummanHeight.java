package com.xuexin.wangshen.util.calmarks;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;

/*
 * 身高
 */
public class MarksCaculator5HummanHeight extends MarksCaculator {

	@Override
	public int getType() {
		return 5;
	}

	@Override
	public double calMarks(Object o, JSONObject objJudge, JSONObject objRes) {
		//未填写，得0分
		if(o == null) return 0;
		
		//非数字，得0分
		if(!(o instanceof Integer)) {
			return 0;
		}
		
		Integer nHeightCM = (Integer)o;
		
		//获取性别，不同性别标准不同，默认男性
		boolean bIsMale = true;
		Object objSex = JSONPath.eval(objRes, "$.baseinfo.sex");
		
		if(objSex != null && objSex instanceof String) {
			if(((String)objSex).indexOf("女") != -1) {
				bIsMale = false;
			}
		}
		
		//计算分数
		if(bIsMale) {
			if(objJudge.containsKey("male")) {
				
				return calHeightStep(nHeightCM.intValue(), objJudge.getJSONArray("male"));
			}
		} else {
			if(objJudge.containsKey("female")) {
			
				return calHeightStep(nHeightCM.intValue(), objJudge.getJSONArray("female"));
			}
		}
		
		return 0;
	}

	//计算区间
	private double calHeightStep(int nHeightCM, JSONArray steps) {
		//遍历身高区间
		for(int i=0; i<steps.size(); i++) {
			JSONObject objLevel = steps.getJSONObject(i);
			
			int nBegin = objLevel.getIntValue("begin");
			int nEnd = objLevel.getIntValue("end");
			double dbScore = (double)objLevel.getFloatValue("score");
			boolean bFlag = objLevel.getBooleanValue("flag");
			
			//满足区间
			if(nHeightCM >= nBegin && nHeightCM <= nEnd) {
				if(bFlag) {
					//硬性条件，整个简历0分，此处返回负最值，特殊处理
					return Double.NEGATIVE_INFINITY;
				}
				
				return dbScore;
			}
		}
		
		return 0;
	}
}

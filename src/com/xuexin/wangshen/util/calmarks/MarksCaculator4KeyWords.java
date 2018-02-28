package com.xuexin.wangshen.util.calmarks;

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
		
		//非字符串，得0分
		if(!(o instanceof String)) {
			return 0;
		}
		
		String strValue = (String)o;
		
		//遍历关键词规则
		double dbTotal = 0;
		JSONArray arrWords = objJudge.getJSONArray("rule");
		for(int i = 0; i < arrWords.size(); i++) {
			JSONObject word = arrWords.getJSONObject(i);
			
			String keyWord = word.getString("key");
			int nScore = word.getIntValue("score");
			
			if(strValue.indexOf(keyWord) != -1) {
				dbTotal += (double)nScore;
			}
		}
		
		return dbTotal;
	}

}

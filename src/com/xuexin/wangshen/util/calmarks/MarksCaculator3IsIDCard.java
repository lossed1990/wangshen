package com.xuexin.wangshen.util.calmarks;

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
		
		//非字符串，得0分
		if(!(o instanceof String)) {
			return 0;
		}
		
		//不是合法身份证，得0分
		String strValue = (String)o;
		
		String regex = "^[1-9]\\d{5}(18|19|([23]\\d))\\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$";
        Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(strValue);
        
        if(!m.matches()) {
        	return 0;
        }
		
		//其他情况得分
		return (double)objJudge.getFloatValue("score");
	}

}

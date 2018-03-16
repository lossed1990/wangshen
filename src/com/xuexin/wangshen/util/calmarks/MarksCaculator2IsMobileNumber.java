package com.xuexin.wangshen.util.calmarks;

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
		
		//非字符串，得0分
		if(!(o instanceof String)) {
			return 0;
		}
		
		//不是合法手机号，得0分
		String strValue = (String)o;
		
		String regex = "^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(17[013678])|(18[0,5-9]))\\d{8}$";
        Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(strValue);
        
        if(!m.matches()) {
        	return 0;
        }
		
		//其他情况得分
		return (double)objJudge.getFloatValue("score");
	}
}

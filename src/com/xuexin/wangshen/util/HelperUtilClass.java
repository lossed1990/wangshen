package com.xuexin.wangshen.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.xuexin.wangshen.util.calmarks.CaculatorBuilder;

public class HelperUtilClass {

	//获取文件扩展名
	public static final String GetFileExtensionFromName(String fileName)
	{
		int i = fileName.lastIndexOf('.');
		if((i > -1) && (i < (fileName.length())))
		{
			return fileName.substring(i+1).toUpperCase();
		}
		
		return "NA";
	}
	
	//获取文件名
	public static final String GetFileNameFromName(String fileName)
	{
		int i = fileName.lastIndexOf('.');
		if((i > -1) && (i < (fileName.length())))
		{
			return fileName.substring(0, i);
		}
		
		return "NA";
	}
	
	//文件转base64
	public static final String ConvertImageFileToBase64(File imgFile, String imgType)
	{
        byte[] data = null; 
        String strBase64 = "";

        try   
        {  
        	InputStream in = new FileInputStream(imgFile);          
            data = new byte[in.available()];  
            in.read(data);  
            in.close();
            
            //对字节数组Base64编码
            strBase64 += "data:image/" + imgType.toLowerCase() + ";base64,";
            strBase64 += Base64.getEncoder().encodeToString(data);
        }   
        catch (IOException e)  
        {  
            e.printStackTrace();  
        }
        
        return strBase64;
     }
	
	//计算分值, Double.NaN表示此项隐藏或者无需计算，0分是有效分值
	public static final double CaculateSectionMarks(JSONObject objTmpl, JSONObject objRes)
	{
		//如果模块设置为隐藏则不计算
		if(!objTmpl.getBooleanValue("show")) {
			return Double.NaN;
		}
		
		//获取区块最大分值
		double dbMax = Double.MAX_VALUE;
		if(objTmpl.containsKey("max")) {
			dbMax = (double)objTmpl.getIntValue("max");
		}
		
		//获取所有评分项目
		if(!objTmpl.containsKey("keys")) {
			//无评分项目
			return Double.NaN;
		}
		
		JSONArray arrJudges = objTmpl.getJSONArray("keys");
		if(arrJudges.size() == 0) {
			//无评分项目
			return Double.NaN;
		}
		
		//遍历评分项目
		double dbTotal = 0;
		for(int i = 0; i < arrJudges.size(); i++) {
			JSONObject objKey = arrJudges.getJSONObject(i);
			
			//跳过未启用的评分项目
			if(!objKey.getBooleanValue("enable")) {
				continue;
			}
			
			//逐条评分
			double dbKeyMarks = CaculateSingleKey(objKey, objRes);
			
			//如果有绝对否定项，整个section无效
			if(dbKeyMarks == Double.NEGATIVE_INFINITY) 
			{
				return Double.NEGATIVE_INFINITY;
			}
			else if(dbKeyMarks == Double.NaN)
			{
				//无效值，直接略过
				continue;
			}
			else 
			{
				//有效值累加
				dbTotal += dbKeyMarks;
			}
		}
		
		//不得超过section得分最大值
		if(dbTotal > dbMax) {
			return dbMax;
		}
		
		return dbTotal;
	}
	
	//计算分值，逐条评分
	public static final double CaculateSingleKey(JSONObject objKey, JSONObject objRes)
	{
		//获取key
		String strKey = objKey.getString("keypath");
		String strKeyFix = strKey.replaceAll("-", ".");			//兼容前端，用减号替换点号，此处还原
		String strKeyPath = "$." + strKeyFix;
				
		//获取key指示的对象
		Object objValue = JSONPath.eval(objRes, strKeyPath);
				
		//获取评分规则类型
		JSONObject objJudge = objKey.getJSONObject("judge");
		
		//如果规则有最大分值
		double dbKeyMarkMax = Double.MAX_VALUE;
		if(objJudge.containsKey("max")) {
			dbKeyMarkMax = (double)objJudge.getIntValue("max");
		}
		
		//规则类型
		int nType = objJudge.getIntValue("type");
		
		//实际评分，根据不同规则类型
		double dbKeyMarks = CaculatorBuilder.BuildByType(nType).calMarks(objValue, objJudge, objRes);
		
		//有效值
		if(dbKeyMarks != Double.NaN && dbKeyMarks != Double.NEGATIVE_INFINITY) {
			
			//超过最大分值
			if(dbKeyMarks > dbKeyMarkMax) {
				return dbKeyMarkMax;
			}
		}
		
		return dbKeyMarks;
	}

}

package com.xuexin.wangshen.util;

public class HelperUtilClass {

	//获取文件扩展名
	public static final String GetFileExtensionFromName(String fileName)
	{
		int i = fileName.lastIndexOf('.');
		if((i > -1) && (i < (fileName.length())))
		{
			return fileName.substring(i);
		}
		
		return ".jpg";
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
	
}

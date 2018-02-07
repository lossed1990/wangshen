package com.xuexin.wangshen.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

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
}

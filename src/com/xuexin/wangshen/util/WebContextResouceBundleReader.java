package com.xuexin.wangshen.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.support.RequestContextUtils;

import com.xuexin.wangshen.model.pojo.RuntimeErrorVO;

/*
 * WebContext下获取国际化资源文件字符串，用于Controller
 */
public class WebContextResouceBundleReader {
      
	/*
	 * 获取资源key
	 */
    public static String getTextValue(String key, HttpServletRequest request) { 
    	
    	return RequestContextUtils.getWebApplicationContext(request)
    							  .getMessage(key, null, RequestContextUtils.getLocale(request));
    }  
    
    /*
     * 获取错误描述快捷方式
     */
    public static String getErrorDescription(String errorcode, HttpServletRequest request) { 
    	
    	String strKey = "error.code." + errorcode;
    	return getTextValue(strKey, request);
    }
    
    public static String getErrorDescription(int errorcode, HttpServletRequest request) { 
    	
    	return getErrorDescription(Integer.toHexString(errorcode), request);
    }
    
    /*
     * 生成运行时错误对象快捷方式
     */
    public static RuntimeErrorVO makeRuntimeErrorInfoByCode(String errorcode, HttpServletRequest request) {
    	
		return new RuntimeErrorVO(errorcode, getErrorDescription(errorcode, request));
    }
}

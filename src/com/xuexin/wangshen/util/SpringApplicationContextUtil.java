package com.xuexin.wangshen.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/*
 * 启动注入ApplicationContext
 */
public class SpringApplicationContextUtil implements ApplicationContextAware {
	
	private static ApplicationContext context;  
	
	public static ApplicationContext getApplicationContext() {  
        return context;  
    }

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {

		context = applicationContext;		
	}

	public static Object getBean(String id) {  

        return context.getBean(id);  
    }
}

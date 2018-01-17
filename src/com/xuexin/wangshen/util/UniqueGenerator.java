package com.xuexin.wangshen.util;

import java.util.Calendar;
import java.util.UUID;
import java.text.SimpleDateFormat;

public class UniqueGenerator {

	public static String GetCurrentDateTimeString()
	{
		Calendar cal = Calendar.getInstance();

		SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		
		return sf.format(cal.getTime());
	}
	
	public static String GetCurrentDateMonthString()
	{
		Calendar cal = Calendar.getInstance();

		SimpleDateFormat sf = new SimpleDateFormat("yyyyMM");
		
		return sf.format(cal.getTime());
	}
	
	public static String GetCurrentTimeString()
	{
		Calendar cal = Calendar.getInstance();

		SimpleDateFormat sf = new SimpleDateFormat("ddHHmmssSSS");
		
		return sf.format(cal.getTime());
	}
	
	public static String GetCurrentDateDayString()
	{
		Calendar cal = Calendar.getInstance();

		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		
		return sf.format(cal.getTime());
	}
	
	public static String GetCurrentDateDayTimeString()
	{
		Calendar cal = Calendar.getInstance();

		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		return sf.format(cal.getTime());
	}
	
	public static String GetGUID()
	{
		UUID uuid = UUID.randomUUID();
		
		return uuid.toString().toUpperCase();
	}
}

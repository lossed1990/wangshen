package com.xuexin.wangshen.util;

import java.io.IOException;

import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

public class HttpClientHelper {
	
	private CloseableHttpResponse response;
	private CloseableHttpClient client;
	
	private String strURL;

	public HttpClientHelper(String strURLParam) {
		
		RequestConfig requestConfig = RequestConfig.custom()  
			    .setConnectionRequestTimeout(5000)
			    .setConnectTimeout(5000)  
			    .setSocketTimeout(5000)
			    .build();
		
		strURL = strURLParam;
		client = HttpClientBuilder.create().setDefaultRequestConfig(requestConfig).build();
	}

	public int DoGetRequest(String strParam) {
		
		String strFullURL = strURL;
		int nCode = -1;
		
		if(strParam != null && strParam.length() > 0)
		{
			strFullURL += "?";
			strFullURL += strParam;
		}
		
		try {
			
			HttpGet request = new HttpGet(strFullURL);
			response = client.execute(request);
			
			nCode = response.getStatusLine().getStatusCode();
			
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
				
		return nCode;
	}
	
	public int DoPostRequest(String strContent) {

		int nCode = -1;
				
		try {

			HttpPost request = new HttpPost(strURL);

			StringEntity entity = new StringEntity(strContent, "UTF-8");
			entity.setContentType("application/json; charset=UTF-8");

			request.setEntity(entity);  
			
			response = client.execute(request);
			
			nCode = response.getStatusLine().getStatusCode();
			
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
				
		return nCode;
	}
	
	public boolean IsReponseJSON() {
		
		if(response != null) 
		{
			String contentMimeType = ContentType.getOrDefault(response.getEntity()).getMimeType();
			
			if(contentMimeType.contains("application/json")) {
				return true;
			}
		}
		
		return false;
	}
	
	public String GetResponseString() {
		
		String strResp = "";
		
		if(response != null) {
			try {
				strResp += EntityUtils.toString(response.getEntity());
			} catch (ParseException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
		
		return strResp;
	}
	
	public void CleanUp() {
		
		if(response != null) {
			try {
				response.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}

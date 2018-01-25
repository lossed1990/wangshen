package com.xuexin.wangshen.web.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xuexin.wangshen.model.pojo.AdsDO;
import com.xuexin.wangshen.model.pojo.AdsPRConfigDTO;
import com.xuexin.wangshen.model.pojo.CommonResultDTO;
import com.xuexin.wangshen.service.AdsService;
import com.xuexin.wangshen.service.GlobalService;
import com.xuexin.wangshen.util.ConstConfigDefine;
import com.xuexin.wangshen.util.ErrorDefines;

@Controller
@RequestMapping("/config")
public class SystemConfigAction {
	
	private static Logger logger = LoggerFactory.getLogger(SystemConfigAction.class);
	
	@Resource(name="globalService")
	private GlobalService service_global;
	
	@Resource(name="adsService")
	private AdsService service_ads;
	
    //广告设置页面
    @RequestMapping(value = "/ads-edit.page", method=RequestMethod.GET)
    public String adsEdit(Model model) {
    	
    	logger.info("transfer to FreeMarker view");
    	
        return "page_ads_edit";
    }
    
    //广告保存，更新
    @RequestMapping(value = "/ads-save.json", method=RequestMethod.POST, consumes = "application/json")
    @ResponseBody
    public CommonResultDTO adsSaveOrUpdate(@RequestBody AdsPRConfigDTO ads) {
    	
    	CommonResultDTO result = new CommonResultDTO();
    	
    	//检查参数
    	if(ads.getData() == null || ads.getData().length() <= 1) {
    		
    		result.setErrorinfo(ErrorDefines.E_JSON_BADPARAM);
    	} else {
    		//删除旧数据，直接插入新数据
    		service_ads.deleteAdsInfo(ConstConfigDefine.ADS_TYPE_PR_DEF);
    		
    		//更新对象
    		AdsDO adsinfo = new AdsDO();
    		adsinfo.setnType(ConstConfigDefine.ADS_TYPE_PR_DEF);				//PR广告
    		adsinfo.setnInfoType(ConstConfigDefine.ADS_INFO_TYPE_BASE64);		//Base64类型
    		adsinfo.setStrInfo(ads.getData());
    		
    		service_ads.saveAdsInfo(adsinfo);
    		result.setOk(true);
    	}
    	
        return result;
    }
    
    //广告获取
    @RequestMapping(value = "/ads-get.json", method=RequestMethod.GET)
    @ResponseBody
    public CommonResultDTO adsGetJSON() {
    	
    	CommonResultDTO result = new CommonResultDTO();
    	
    	//获取广告对象
    	AdsDO adsinfo = service_ads.getAdsInfo(ConstConfigDefine.ADS_TYPE_PR_DEF);
    	
    	//尚未生成
    	if(adsinfo == null) {
    		result.setErrorinfo(ErrorDefines.E_JSON_NODATA);
    	} else {
    		
    		result.setOk(true);
    		result.setResult(adsinfo.getStrInfo());
    	}
    	
        return result;
    }
}

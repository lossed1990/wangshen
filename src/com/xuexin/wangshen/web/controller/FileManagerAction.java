package com.xuexin.wangshen.web.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.xuexin.wangshen.service.GlobalService;
import com.xuexin.wangshen.util.ConstConfigDefine;
import com.xuexin.wangshen.util.HelperUtilClass;
import com.xuexin.wangshen.util.UniqueGenerator;

@Controller
@RequestMapping("/file")
public class FileManagerAction {
	
	private static Logger logger = LoggerFactory.getLogger(FileManagerAction.class);
	
	@Resource(name="globalService")
	private GlobalService service_global;
	
	//通用文件上传
    @RequestMapping(value = "/common-upload.json", method=RequestMethod.POST)
    @ResponseBody
    public String commonUpload(HttpServletRequest request,
            @RequestParam("info") String info,
            @RequestParam("file") MultipartFile file) throws Exception {
    	
        if(!file.isEmpty()) {

            String path = request.getServletContext().getRealPath(ConstConfigDefine.PATH_COMMON_FILE_REL);
			String fileId = UniqueGenerator.GetCurrentDateTimeString();
			String fileExt = HelperUtilClass.GetFileExtensionFromName(file.getOriginalFilename());

            String fileName = fileId + fileExt;
            File saveFile = new File(path, fileName);
           
            if (!saveFile.getParentFile().exists()) { 
            	saveFile.getParentFile().mkdirs();
            }

            file.transferTo(saveFile);
            
            return "success";
        } else {
            return "error";
        }
    }
	    
	  
}

package com.xuexin.wangshen.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.xuexin.wangshen.model.pojo.CommonResultDTO;
import com.xuexin.wangshen.model.pojo.FileInfoDO;
import com.xuexin.wangshen.service.FileService;
import com.xuexin.wangshen.util.ConstConfigDefine;
import com.xuexin.wangshen.util.ErrorDefines;
import com.xuexin.wangshen.util.HelperUtilClass;
import com.xuexin.wangshen.util.UniqueGenerator;

@Controller
@RequestMapping("/file")
public class FileManagerAction {
	
	private static Logger logger = LoggerFactory.getLogger(FileManagerAction.class);
	
	public static Map<String, String> contentMap = new HashMap<String, String>();
	public static Set<String> forbidenSet = new HashSet<String>();
	
	static {
		contentMap.put("zip", ConstConfigDefine.CONTENT_TYPE_ZIP);
		contentMap.put("htm", ConstConfigDefine.CONTENT_TYPE_HTML);
		contentMap.put("html", ConstConfigDefine.CONTENT_TYPE_HTML);
		contentMap.put("gif", ConstConfigDefine.CONTENT_TYPE_GIF);
		contentMap.put("jpg", ConstConfigDefine.CONTENT_TYPE_JPG);
		contentMap.put("jpeg", ConstConfigDefine.CONTENT_TYPE_JPG);
		contentMap.put("bmp", ConstConfigDefine.CONTENT_TYPE_BMP);
		contentMap.put("png", ConstConfigDefine.CONTENT_TYPE_PNG);
		contentMap.put("txt", ConstConfigDefine.CONTENT_TYPE_TEXT);
		contentMap.put("log", ConstConfigDefine.CONTENT_TYPE_TEXT);
		contentMap.put("mp3", ConstConfigDefine.CONTENT_TYPE_MP3);
		contentMap.put("ogg", ConstConfigDefine.CONTENT_TYPE_OGG);
		contentMap.put("wav", ConstConfigDefine.CONTENT_TYPE_WAV);
		contentMap.put("mp4", ConstConfigDefine.CONTENT_TYPE_MP4);
				
		forbidenSet.add("java");
		forbidenSet.add("xml");
		forbidenSet.add("class");
		forbidenSet.add("jsp");
		forbidenSet.add("lib");
		forbidenSet.add("properties");
		forbidenSet.add("war");
		forbidenSet.add("sql");
	}
	
	@Resource(name="fileService")
	private FileService service_file;
	
	//通用文件上传
    @RequestMapping(value = "/common-upload.json", method=RequestMethod.POST)
    @ResponseBody
    public CommonResultDTO commonUpload(HttpServletRequest request,
            @RequestParam("file") MultipartFile file) {
    	
    	CommonResultDTO result = new CommonResultDTO();
    	
        if(!file.isEmpty()) {

            String path = request.getServletContext().getRealPath(ConstConfigDefine.PATH_COMMON_FILE_REL);
            String fileExt = HelperUtilClass.GetFileExtensionFromName(file.getOriginalFilename());
            String fileStamp = UniqueGenerator.GetCurrentDateTimeString();
			String fileId = fileExt + fileStamp;
			

            String fileName = fileStamp + "." + fileExt;
            File saveFile = new File(path, fileName);
           
            try {
	            if (!saveFile.getParentFile().exists()) { 
	            	saveFile.getParentFile().mkdirs();
	            }
	
	            file.transferTo(saveFile);
	            
	            //文件已转移到指定目录，保存到数据库
	            FileInfoDO fileinfo = new FileInfoDO();
	            fileinfo.setStrFileID(fileId);
	            fileinfo.setnFileSize(file.getSize());
	            fileinfo.setStrFilePath(fileName);
	            fileinfo.setStrFileExt(fileExt);
	            //TODO: 设置当前用户id
	            
	            if(service_file.saveFileInfo(fileinfo) == 1) {
	            	
	            	result.setOk(true);
	            	result.setResult(fileId);
	            	
	            } else {
	            	result.setErrorinfo(ErrorDefines.E_JSON_FILE_DB);
	            	logger.error(ErrorDefines.E_JSON_FILE_DB);
	            }
	            
            } catch(IOException e) {
            	result.setErrorinfo(ErrorDefines.E_JSON_FILE_REMOTE);
            	logger.error(e.getMessage());
            }
            
        } else {
        	//文件未完全上传
        	result.setErrorinfo(ErrorDefines.E_JSON_FILE_PART);
        	logger.error(ErrorDefines.E_JSON_FILE_PART);
        }
        
        return result;
    }
    
    
    //通用文件下载
    @RequestMapping(value = "/download.page", method=RequestMethod.GET)
    public ResponseEntity<byte[]> commonDownload(HttpServletRequest request,
    		@RequestParam("fid") String fid) throws Exception {
    	
    	//检查参数
    	if(fid == null || fid.length() <= 1) {
    		return new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
    	}
    	
    	//获取文件信息
    	FileInfoDO fileinfo = service_file.getFileInfo(fid);
    	
    	if(fileinfo == null) {
    		//找不到文件
    		return new ResponseEntity<byte[]>(HttpStatus.NOT_FOUND);
    	}
    	
    	//文件路径
    	String path = request.getServletContext().getRealPath(ConstConfigDefine.PATH_COMMON_FILE_REL);
        File file = new File(path + File.separator + fileinfo.getStrFilePath());
        
        //添加http头
        HttpHeaders headers = new HttpHeaders();  

        //通知浏览器以attachment（下载方式）打开图片
        headers.setContentDispositionFormData("attachment", fileinfo.getStrFileID() + "." + fileinfo.getStrFileExt()); 

        //文件类型描述
        String conttype = contentMap.get(fileinfo.getStrFileExt().toLowerCase());
		if(conttype == null) {
			headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		} else {
			String[] types = conttype.split("/");
			headers.setContentType(new MediaType(types[0], types[1]));
		}
        
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);  
    }
	  
}

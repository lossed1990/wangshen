package com.xuexin.wangshen.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xuexin.wangshen.dao.FileManagmentDAO;
import com.xuexin.wangshen.model.pojo.FileInfoDO;

@Service("fileService")
public class FileServiceImpl implements FileService{
	
	@Resource
	private FileManagmentDAO dao_fileinfo; 

	@Override
	public int saveFileInfo(FileInfoDO file) {

		return dao_fileinfo.saveUploadFile(file);
	}

	@Override
	public FileInfoDO getFileInfo(String fid) {

		return dao_fileinfo.getFileInfo(fid);
	}

}

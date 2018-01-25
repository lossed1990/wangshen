package com.xuexin.wangshen.dao;

import com.xuexin.wangshen.model.pojo.FileInfoDO;

/*
 * 上传文件记录
 */
public interface FileManagmentDAO {

	/*
	 * 插入文件信息
	 */
	int saveUploadFile(FileInfoDO file);
	
	/*
	 * 获取文件信息，通过文件id
	 */
	FileInfoDO getFileInfo(String fid);
}

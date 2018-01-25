package com.xuexin.wangshen.service;

import com.xuexin.wangshen.model.pojo.FileInfoDO;

/*
 * 文件上传下载服务
 */
public interface FileService {

	/*
	 * 保存文件信息，文件上传
	 */
	int saveFileInfo(FileInfoDO file);
	
	/*
	 * 获取文件信息，文件下载
	 */
	FileInfoDO getFileInfo(String fid);
}

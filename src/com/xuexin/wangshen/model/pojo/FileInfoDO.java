package com.xuexin.wangshen.model.pojo;

/*
 * 文件信息存储对象
 */
public class FileInfoDO {

	private String strFileID;		//文件ID
	private long nFileSize;			//文件大小byte
	private String strFilePath;		//文件相对路径
	private String strFileExt;		//文件扩展名
	private int nUpUserID;			//文件上传用户ID
	private java.sql.Timestamp tsUpTime;	//文件上传时间
	
	public String getStrFileID() {
		return strFileID;
	}
	public void setStrFileID(String strFileID) {
		this.strFileID = strFileID;
	}
	public String getStrFilePath() {
		return strFilePath;
	}
	public void setStrFilePath(String strFilePath) {
		this.strFilePath = strFilePath;
	}
	public int getnUpUserID() {
		return nUpUserID;
	}
	public void setnUpUserID(int nUpUserID) {
		this.nUpUserID = nUpUserID;
	}
	public java.sql.Timestamp getTsUpTime() {
		return tsUpTime;
	}
	public void setTsUpTime(java.sql.Timestamp tsUpTime) {
		this.tsUpTime = tsUpTime;
	}
	public String getStrFileExt() {
		return strFileExt;
	}
	public void setStrFileExt(String strFileExt) {
		this.strFileExt = strFileExt;
	}
	public long getnFileSize() {
		return nFileSize;
	}
	public void setnFileSize(long nFileSize) {
		this.nFileSize = nFileSize;
	}
}

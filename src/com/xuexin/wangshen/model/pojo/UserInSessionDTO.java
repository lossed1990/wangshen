package com.xuexin.wangshen.model.pojo;

import com.xuexin.wangshen.util.ConstConfigDefine;

/*
 * 用户session对象
 */
public class UserInSessionDTO {

	private int nUserID;			//用户ID
	private String strUsername;		//用户名（目前只有admin有用户名）
	private String strMobile;		//手机号码
	private boolean bIsAdmin;		//是否是管理员
	
	//用数据库对象初始化
	public UserInSessionDTO(UserInfoDO userdo) {
		nUserID = userdo.getnUID();
		strUsername = userdo.getStrUsername();
		strMobile = userdo.getStrMobileNum();
		
		if(userdo.getStrUsername() != null && 
				userdo.getStrUsername().compareToIgnoreCase(ConstConfigDefine.SYSTEM_ADMIN_NAME) == 0) {
			bIsAdmin = true;
		} else {
			bIsAdmin = false;
			strUsername = userdo.getStrMobileNum();
		}
	}
	
	public int getnUserID() {
		return nUserID;
	}
	public void setnUserID(int nUserID) {
		this.nUserID = nUserID;
	}
	public String getStrUsername() {
		return strUsername;
	}
	public void setStrUsername(String strUsername) {
		this.strUsername = strUsername;
	}
	public String getStrMobile() {
		return strMobile;
	}
	public void setStrMobile(String strMobile) {
		this.strMobile = strMobile;
	}
	public boolean isbIsAdmin() {
		return bIsAdmin;
	}
	public void setbIsAdmin(boolean bIsAdmin) {
		this.bIsAdmin = bIsAdmin;
	}
}

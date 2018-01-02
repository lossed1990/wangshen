package com.xuexin.wangshen.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xuexin.wangshen.dao.ErrorInfoDAO;
import com.xuexin.wangshen.model.pojo.ErrorInfoDO;


@Service("globalService")
public class GlobalServiceImpl implements GlobalService {
	
	@Resource
	private ErrorInfoDAO dao_errorinfo; 

	@Override
	public List<ErrorInfoDO> listAllErrorCodeInfo() {

		//简单处理，直接从数据库返回数据集
		return dao_errorinfo.listErrorCodeInfo();		
	}

}

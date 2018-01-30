package com.xuexin.wangshen.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.xuexin.wangshen.dao.ResumeManagmentDAO;
import com.xuexin.wangshen.model.pojo.PagingInfo;
import com.xuexin.wangshen.model.pojo.ResumeDO;
import com.xuexin.wangshen.model.pojo.ResumeListVO;
import com.xuexin.wangshen.model.pojo.ResumePartDTO;
import com.xuexin.wangshen.util.UniqueGenerator;

@Service("resumeService")
public class ResumeServiceImpl implements ResumeService {
	
	@Resource
	private ResumeManagmentDAO dao_resume;

	@Override
	public int saveNewResume(ResumeDO resume) {

		//保存新简历，用户只填充模板id字段，控制器填充用户id字段
		resume.setStrResumeGUID(UniqueGenerator.GetGUID());
		
		return dao_resume.saveResume(resume);
	}

	@Override
	public ResumeDO getResumeByGUID(String strGUID) {
		
		return dao_resume.getResumeByGUID(strGUID);
	}

	@Override
	public int deleteResume(String strGUID) {

		return dao_resume.deleteResumeByGUID(strGUID);
	}

	@Override
	public int updateResumePart(int nLastModUser, ResumePartDTO partresume) {
		// 先从数据库取出原值
		ResumeDO resold = dao_resume.getResumeByGUID(partresume.getResume_id());
		
		//未找到
		if(resold == null) {
			return 0;
		}
		
		// 从字符串转到json对象
		JSONObject jsObj = JSON.parseObject(resold.getStrResumeJOSN());

		// 替换新内容
		jsObj.put(partresume.getSection_name(), partresume.getValue());

		// 转换为字符串
		String strNewJSON = JSON.toJSONString(jsObj);

		// 保存到数据库，只修改json
		ResumeDO resNew = new ResumeDO();
		resNew.setnLastModUserID(nLastModUser);
		resNew.setStrResumeGUID(resold.getStrResumeGUID());
		resNew.setStrResumeJOSN(strNewJSON);

		return dao_resume.updateResumeSection(resNew);
	}

	@Override
	public List<ResumeListVO> listResumesInPages(int nUserID, PagingInfo pageinfo) {

		//获取总数
		int nTotalCount = dao_resume.countResumesByUser(nUserID);
		
		//计算分页
		int nTotalPage = (int) Math.ceil(((double)nTotalCount / pageinfo.getnPageSize()));
		
		pageinfo.setnTotalCount(nTotalCount);
		pageinfo.setnTotalPage(nTotalPage);
		
		//计算开始结束位置
		int nStart = pageinfo.getnPageIndex() * pageinfo.getnPageSize();
		int nEnd = nStart + pageinfo.getnPageSize();
		
		return dao_resume.listResumesInPageByUser(nUserID, nStart, nEnd);
	}

}

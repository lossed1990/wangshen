package com.xuexin.wangshen.service.test;

import static org.junit.Assert.*;

import java.util.List;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xuexin.wangshen.model.pojo.PagingInfo;
import com.xuexin.wangshen.model.pojo.ResumeListVO;
import com.xuexin.wangshen.service.ResumeService;


/*
 * 简历服务测试类
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:WebRoot/WEB-INF/applicationContext.xml" })
public class ResumeServiceTest {

	@Resource(name="resumeService")
	private ResumeService resume_service;
	
	@Test
	public void testListResumeInPage() {
		
		PagingInfo pageinfo = new PagingInfo();
		
		pageinfo.setnPageIndex(0);
		pageinfo.setnPageSize(5);
		
		List<ResumeListVO> lstResume = resume_service.listResumesInPages(3, pageinfo);
		
		assertNotNull(lstResume);
	}

}

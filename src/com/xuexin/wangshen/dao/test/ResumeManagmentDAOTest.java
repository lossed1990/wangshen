package com.xuexin.wangshen.dao.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.xuexin.wangshen.dao.ResumeManagmentDAO;
import com.xuexin.wangshen.model.pojo.ResumeDO;
import com.xuexin.wangshen.model.pojo.ResumeListVO;
import com.xuexin.wangshen.util.UniqueGenerator;


/*
 * 简历操作测试类
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:WebRoot/WEB-INF/applicationContext.xml" })
//@Transactional
public class ResumeManagmentDAOTest {
	
	@Autowired
	private ResumeManagmentDAO resumeDAO;

	@Test
	public void testSaveResume() {
		
		ResumeDO resume = new ResumeDO();
		resume.setStrResumeGUID(UniqueGenerator.GetGUID());
		resume.setnTemplateID(1);
		resume.setnUserID(1);
		resume.setStrResumeName("测试简历");
	
		try {
			assertEquals(resumeDAO.saveResume(resume), 1);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	@Test
	public void testGetResumeByGUID() {
		ResumeDO resume = resumeDAO.getResumeByGUID("542A183D-7D7E-4FFA-92D0-6A4D6FBF32EF");
		
		assertNotNull(resume);
	}
	
	@Test
	public void testCountResumes() {
		
		int nCount = resumeDAO.countResumesByUser(1);
		
		assertEquals(nCount, 1);
	}
	
	@Test
	public void testListResumeInPage() {
		List<ResumeListVO> lstResume = resumeDAO.listResumesInPageByUser(1, 0, 100);
		
		assertNotNull(lstResume);
	}
}

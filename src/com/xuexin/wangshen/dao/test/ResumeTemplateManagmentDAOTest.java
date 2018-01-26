package com.xuexin.wangshen.dao.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.xuexin.wangshen.dao.ResumeTemplateManagmentDAO;
import com.xuexin.wangshen.model.pojo.ResumeTemplateDO;


/*
 * 用户DAO操作测试类
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:WebRoot/WEB-INF/applicationContext.xml" })
@Transactional
public class ResumeTemplateManagmentDAOTest {
	
	@Autowired
	private ResumeTemplateManagmentDAO tmplDAO;

	@Test
	public void testSaveTemplate() {
		
		ResumeTemplateDO tmpl = new ResumeTemplateDO();
		tmpl.setStrTempName("测试模板");
		tmpl.setStrTempPic("JPG200000000000");
		try {
			assertEquals(tmplDAO.saveTemplateInfo(tmpl), 1);
			assertNotEquals(tmpl.getnTempID(), 0);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	@Test
	public void testUpdateTemplateInfo() {
		ResumeTemplateDO tmpl = new ResumeTemplateDO();
		tmpl.setnTempID(1);
		//tmpl.setStrTempName("测试模板修改名称");
		//tmpl.setStrTempPic("AVI200000000000");
		//tmpl.setStrTempJson("{\"a\":1}");
		tmpl.setbEnable(true);
		try {
			assertEquals(tmplDAO.updateTemplateInfo(tmpl), 1);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	@Test
	public void testGetTemplateInfo() {
		ResumeTemplateDO tmpl = tmplDAO.getTemplateInfo(1);
		assertNotNull(tmpl);
	}
	
	@Test
	public void testListTemplateInfo() {
		List<ResumeTemplateDO> lsttmpl1 = tmplDAO.listTemplateInfo(true);
		List<ResumeTemplateDO> lsttmpl2 = tmplDAO.listTemplateInfo(false);
		assertNotNull(lsttmpl1);
		assertNotNull(lsttmpl2);
	}
	
	@Test
	public void testDeleteTemplatePurge() {
		try {
			assertEquals(tmplDAO.deleteTemplatePurge(1), 0);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}

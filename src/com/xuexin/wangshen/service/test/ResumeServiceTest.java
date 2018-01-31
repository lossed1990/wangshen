package com.xuexin.wangshen.service.test;

import static org.junit.Assert.*;

import java.awt.Desktop;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.List;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.docx4j.convert.in.xhtml.XHTMLImporter;
import org.docx4j.convert.in.xhtml.XHTMLImporterImpl;
import org.docx4j.openpackaging.packages.WordprocessingMLPackage;
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
		
		generate(new File("D:\\Work\\Private\\chartNodeServer\\resume.xhtml"), new File("D:/1.docx"));  
		
		/*
		PagingInfo pageinfo = new PagingInfo();
		
		pageinfo.setnPageIndex(0);
		pageinfo.setnPageSize(5);
		
		List<ResumeListVO> lstResume = resume_service.listResumesInPages(3, pageinfo);
		
		assertNotNull(lstResume);*/
	}

	 public static void generate(File inputFile, File outputFile)
	    {
	        InputStream templateStream = null;
	        try
	        {
	            // Get the template input stream from the application resources.
	            final URL resource = inputFile.toURI().toURL();
	            
	            // Instanciate the Docx4j objects.
	            WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.createPackage();
	            //WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.load(new File("D:/ResumeTemplate.docx"));
	            XHTMLImporter XHTMLImporter = new XHTMLImporterImpl(wordMLPackage);
	            
	            // Load the XHTML document.
	            wordMLPackage.getMainDocumentPart().getContent().addAll(XHTMLImporter.convert(resource));
	            
	            // Save it as a DOCX document on disc.
	            wordMLPackage.save(outputFile);
	             Desktop.getDesktop().open(outputFile);
	            
	        }
	        catch (Exception e)
	        {
	        	e.printStackTrace();
	            throw new RuntimeException("Error converting file " + inputFile, e);
	            
	        }
	        finally
	        {
	            if (templateStream != null)
	            {
	                try
	                {
	                    templateStream.close();
	                }
	                catch (Exception ex)
	                {
	                    ex.printStackTrace();
	                    
	                }
	            }
	        }
	    }
}

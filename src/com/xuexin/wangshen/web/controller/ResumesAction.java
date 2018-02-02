package com.xuexin.wangshen.web.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.docx4j.convert.in.xhtml.XHTMLImporter;
import org.docx4j.convert.in.xhtml.XHTMLImporterImpl;
import org.docx4j.openpackaging.packages.WordprocessingMLPackage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.xuexin.wangshen.model.pojo.CommonResultDTO;
import com.xuexin.wangshen.model.pojo.PagingInfo;
import com.xuexin.wangshen.model.pojo.ResumeDO;
import com.xuexin.wangshen.model.pojo.ResumeListVO;
import com.xuexin.wangshen.model.pojo.ResumePartDTO;
import com.xuexin.wangshen.model.pojo.ResumeTemplateDO;
import com.xuexin.wangshen.model.pojo.datatable.DatatableRequestParam;
import com.xuexin.wangshen.model.pojo.datatable.DatatablesResponse;
import com.xuexin.wangshen.service.GlobalService;
import com.xuexin.wangshen.service.ResumeService;
import com.xuexin.wangshen.service.ResumeTemplateService;
import com.xuexin.wangshen.util.ConstConfigDefine;
import com.xuexin.wangshen.util.ErrorDefines;
import com.xuexin.wangshen.util.WebContextResouceBundleReader;

import freemarker.template.Template;
import freemarker.template.TemplateException;

@Controller
@RequestMapping("/resume")
public class ResumesAction {

	private static Logger logger = LoggerFactory.getLogger(ResumesAction.class);
	
	//静态文件生成相关
	@Autowired
	private FreeMarkerConfigurer freemarkerConfigurer;

	@Resource(name = "globalService")
	private GlobalService service_global;

	@Resource(name = "resumeService")
	private ResumeService service_resume;
	
	@Resource(name = "tmplService")
	private ResumeTemplateService service_tmpl;

	// 用户添加简历
	@RequestMapping(value = "/resume-add.page", method = RequestMethod.GET)
	public String resumeAdd(Model model) {

		List<ResumeTemplateDO> lsttmpls = service_tmpl.listTemplateInfo(true);
		model.addAttribute("lstTemps", lsttmpls);

		return "page_resume_add";
	}
	
	// 管理员浏览所有简历
	@RequestMapping(value = "/admin-resume-list.page", method = RequestMethod.GET)
	public String adminResumeList(Model model) {

		logger.info("transfer to FreeMarker view");

		return "page_admin_resume_list";
	}

	// 浏览所有简历
	@RequestMapping(value = "/resume-list.page", method = RequestMethod.GET)
	public String resumeList(Model model) {

		logger.info("transfer to FreeMarker view");

		return "page_resume_list";
	}
	
	// 适配datatable简历列表
	@RequestMapping(value = "/resume-list-datatable.json", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public DatatablesResponse<ResumeListVO> resumeListDatatableJSON(Model model, @RequestBody DatatableRequestParam param) {

		DatatablesResponse<ResumeListVO> result = new DatatablesResponse<ResumeListVO>();
		
		//获取分页信息
		PagingInfo page = new PagingInfo();
		page.setnPageSize(param.getLength());						//分页大小
		page.setnPageIndex(param.getStart() / param.getLength());	//当前页面
		
		//用户id
		int nUserID = param.getUserid();
		
		List<ResumeListVO> lstResumes = service_resume.listResumesInPages(nUserID, page);
		
		result.setData(lstResumes);
		result.setDraw(param.getDraw());
		result.setRecordsFiltered(page.getnTotalCount());
		result.setRecordsTotal(page.getnTotalCount());

		return result;
	}

	// 编辑简历
	@RequestMapping(value = "/resume-edit.page", method = RequestMethod.GET)
	public String resumeEdit(Model model, HttpServletRequest request, 
							@RequestParam(value = "temp_id", required = false) Integer nTemplateID, 
							@RequestParam(value = "resume_guid", required = false) String strResumeGUID) {

		ResumeDO resume = new ResumeDO();
		
		//通过参数判断是否新建
		if(nTemplateID != null) {
			
			resume.setnTemplateID(nTemplateID);
			
			//TODO: 设置用户参数
			if(service_resume.saveNewResume(resume) == 0) {
				// 作为运行时错误，数据库操作失败
				model.addAttribute("error", WebContextResouceBundleReader
						.makeRuntimeErrorInfoByCode(Integer.toHexString(ErrorDefines.E_SVR_RUNTIME_DBFAILED), request));

				return "page_runtime_exception";
			}		
		} else if(strResumeGUID != null && strResumeGUID.length() > 0) {
			
			//编辑页面
			resume = service_resume.getResumeByGUID(strResumeGUID);
			
			if(resume == null) {
				//数据不存在
				model.addAttribute("error", WebContextResouceBundleReader
						.makeRuntimeErrorInfoByCode(Integer.toHexString(ErrorDefines.E_SVR_RUNTIME_NODATA), request));

				return "page_runtime_exception";
			}
			
		} else {
			//参数缺失
			model.addAttribute("error", WebContextResouceBundleReader
					.makeRuntimeErrorInfoByCode(Integer.toHexString(ErrorDefines.E_SVR_RUNTIME_NOPARAM), request));

			return "page_runtime_exception";
		}
		
		//回传参数给用户
		model.addAttribute("temp_id", resume.getnTemplateID());
		model.addAttribute("resume_guid", resume.getStrResumeGUID());

		return "page_resume_edit";
	}

	// 预览简历
	@RequestMapping(value = "/resume-view.page", method = RequestMethod.GET)
	public String resumeView(Model model) {

		logger.info("transfer to FreeMarker view");

		return "page_resume_view";
	}
	
	// 删除简历
	@RequestMapping(value = "/resume-remove.json", method = RequestMethod.GET)
	@ResponseBody
	public CommonResultDTO resumeRemove(@RequestParam("resume_id") String strGUID) {

		CommonResultDTO result = new CommonResultDTO();
		
		service_resume.deleteResume(strGUID);
		result.setOk(true);

		return result;
	}
	
	// 保存简历某一模块
	@RequestMapping(value = "/resume-part-save.json", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public CommonResultDTO resumePartSave(@RequestBody ResumePartDTO partresume) {

		CommonResultDTO result = new CommonResultDTO();
		
		//TODO: 获取当前用户信息
		int nEffected = service_resume.updateResumePart(1, partresume);
		
		if(nEffected == 0) {
			
			result.setErrorinfo(ErrorDefines.E_JSON_NOCHANGE);
		} else {
		
			result.setOk(true);
		}

		return result;
	}
	
	// 获取简历某一模块，模块名不强制，不提供则返回整个简历信息
	@RequestMapping(value = "/resume-part-detail.json", method = RequestMethod.GET)
	@ResponseBody
	public CommonResultDTO resumePartDetail(@RequestParam("resume_id") String strGUID, 
											@RequestParam(value = "section_name", required = false) String strSecName) {

		CommonResultDTO result = new CommonResultDTO();
		
		//获取简历信息
		ResumeDO resume = service_resume.getResumeByGUID(strGUID);
		
		if(resume == null) {
			//未找到
			result.setErrorinfo(ErrorDefines.E_JSON_NODATA);
		} else {
			
			result.setOk(true);
			
			// 从字符串转到json对象
			JSONObject jsObj = JSON.parseObject(resume.getStrResumeJOSN());
			
			//如果未提供模块，则返回整个简历
			if(strSecName == null) {
				
				result.setResult(jsObj);
			} else {
				
				//提取某个模块
				result.setResult(jsObj.getJSONObject(strSecName));
			}
		}
		
		return result;
	}

	// 打印预览模式，生成静态网页
	@RequestMapping(value = "/resume-view-print.page", method = RequestMethod.GET)
	public String resumeViewPrint(Model model, HttpServletRequest request, 
								@RequestParam("resume_id") String strGUID,
								@RequestParam(value = "type", required = false) String strType) {

		//获取简历信息
		ResumeDO resume = service_resume.getResumeByGUID(strGUID);
		
		//数据不存在
		if(resume == null) {
			
			model.addAttribute("error", WebContextResouceBundleReader
					.makeRuntimeErrorInfoByCode(Integer.toHexString(ErrorDefines.E_SVR_RUNTIME_NODATA), request));

			return "page_runtime_exception";
		}
		
		//填充简历数据
		model.addAttribute("info", resume);
		model.addAttribute("resume", JSON.parseObject(resume.getStrResumeJOSN()));
		
		//如果只是预览视图，则直接生成预览页面，预览页面带打印和下载链接
		if(strType == null) {
			return "page_resume_view_print_withlink";
		}
		
		//根据简历ID和时间戳检测静态XHTML, DOCX是否已经生成
		String strStaticXHTMLName = resume.getUniqueName() + ".html";
		String strStaticDOCXName = resume.getUniqueName() + ".docx";
		
		String xHtmlPath = request.getServletContext().getRealPath(ConstConfigDefine.PATH_RESUME_XHTML_REL);
		File xHtmlFile = new File(xHtmlPath, strStaticXHTMLName);
		
		String xDocxPath = request.getServletContext().getRealPath(ConstConfigDefine.PATH_RESUME_DOCX_REL);
		File xDocxFile = new File(xDocxPath, strStaticDOCXName);

        try {
        	//对应文件夹不存在则创建
        	if (!xHtmlFile.getParentFile().exists()) { 
        		xHtmlFile.getParentFile().mkdirs();
            }
        	
        	if (!xDocxFile.getParentFile().exists()) { 
        		xDocxFile.getParentFile().mkdirs();
            }
        	
        	//无论请求XHTML还是DOCX，都必须先生成XHTML
        	if(!xHtmlFile.exists()) {
        		
                Template tXhtmlFtl = freemarkerConfigurer.getConfiguration().getTemplate("page_resume_view_print.ftl");
                
                //添加Reueqst环境用于变量解析
                model.addAttribute("request", request);
                
                //在指定目录生成XHTML文件
                tXhtmlFtl.process(model, new OutputStreamWriter(new FileOutputStream(xHtmlFile), "UTF-8"));                
        	}
        	
        	//如果请求xhtml，则可以直接跳转到生成的XHTML文件，到此为止
        	if(strType.compareToIgnoreCase("xhtml") == 0) {
        		
        		return "redirect:" + ConstConfigDefine.PATH_RESUME_XHTML_REL + strStaticXHTMLName;
        	}
        	
        	//如果请求docx文件，则通过docx4j生成，此时XHTML文件已经生成
        	if(strType.compareToIgnoreCase("docx") == 0) {
        			
        		if(!xDocxFile.exists()) {

        			//不适用模板创建标准Open Office文档
    	            WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.createPackage();
    	            
    	            //如果需要定制页眉，页脚等属性，或者生成MS Office标准文档，可以使用下注释分支
        			//String docxTemplPath = request.getServletContext().getRealPath(ConstConfigDefine.PATH_RESUME_DOCX_TEMPL);
    	            //WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.load(new File(docxTemplPath));
    	            
    	            XHTMLImporter XHTMLImporter = new XHTMLImporterImpl(wordMLPackage);
    	            wordMLPackage.getMainDocumentPart().getContent().addAll(XHTMLImporter.convert(xHtmlFile, null));
    	            wordMLPackage.save(xDocxFile);
        		}
	            
        		//此时已生成，直接跳转到资源
        		return "redirect:" + ConstConfigDefine.PATH_RESUME_DOCX_REL + strStaticDOCXName;
        	}
        }  
        catch (IOException e) {  
        	logger.error(e.getMessage());
        }  
        catch (TemplateException e) {  
        	logger.error(e.getMessage()); 
        } 
        catch (Exception e) {  
        	logger.error(e.getMessage()); 
        }
        finally {}
        
        //错误处理
        model.addAttribute("error", WebContextResouceBundleReader
				.makeRuntimeErrorInfoByCode(Integer.toHexString(ErrorDefines.E_SVR_RUNTIME_IO), request));

		return "page_runtime_exception";
	}
}

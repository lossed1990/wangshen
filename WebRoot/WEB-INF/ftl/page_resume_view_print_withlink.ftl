<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html
        PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>个人简历</title>
    <style type="text/css">
        p { font: 12pt sans-serif }
        h2 { font-size: 16pt }
    </style>
</head>
<body>
<div style="width: 600px;">
    <div style="text-align: center">
        <p style="font-size: 20pt; font-weight: bold;">个人简历</p>
    </div>
    
<#if (resume.baseinfo)??>
<#assign baseinfo = resume.baseinfo />
	<p/>
	<div id="baseinfo">
		<h2>个人基本信息</h2>
		<p>姓名: ${baseinfo.name!}</p>
		<p>性别: ${baseinfo.sex!}</p>
		<p>出生日期: ${baseinfo.birth_date!}</p>
		<p>民族: ${baseinfo.nation!}</p>
		<p>固定电话: ${baseinfo.fix_phone!}</p>
		<p>手机号码: ${baseinfo.mobile!}</p>
		<p>电子邮件: ${baseinfo.email!}</p>
		
		<p>曾用名: ${baseinfo.old_name!}</p>
		<p>籍贯: ${baseinfo.birthplace!}</p>
		<p>政治面貌: ${baseinfo.party!}</p>
		<p>入党团时间: ${baseinfo.party_entry_date!}</p>
		<p>身高: ${baseinfo.height_cm!} CM</p>
		<p>体重: ${baseinfo.weight_kg!} KG</p>
		<p>血型: ${baseinfo.bloodtype!}</p>
		<p>婚姻状况: ${baseinfo.marrage!}</p>
		<p>生育状况: ${baseinfo.have_kid!}</p>
		<p>健康状况: ${baseinfo.heath!}</p>
		<p>生源地/高考所在地: ${baseinfo.gaokao_place!}</p>
		<p>现居住地: ${baseinfo.living_place!}</p>
		<p>通讯地址: ${baseinfo.address!}</p>
		<p>家庭地址: ${baseinfo.home_address!}</p>
		<p>户口所在地: ${baseinfo.hukou_place!}</p>
		<p>户口类别: ${baseinfo.hukou_type!}</p>
		<p>毕业时间: ${baseinfo.graduate_date!}</p>
		<p>参加工作时间: ${baseinfo.work_date!}</p>
		<p>近期免冠一寸照片: ${baseinfo.head_pic!}</p>
		<p>近期生活照: ${baseinfo.live_pic!}</p>
		<p>学生证/学生卡照: ${baseinfo.student_pic!}</p>
		<p>证件类别: ${baseinfo.idcard_type!}</p>
		<p>证件号: ${baseinfo.idcard_num!}</p>
		<p>邮编: ${baseinfo.postal!}</p>
		<p>紧急联系人: ${baseinfo.emergency_contact!}</p>
		<p>紧急联系人电话: ${baseinfo.emergency_phone!}</p>
    </div>
</#if>
    
<#if (resume.education)??>
<#assign education = resume.education />
    <p/>
    <div id="education">
        <h2>教育背景</h2>
        <p>最高学历: ${education.top_grade!}</p>
        <p>高考录取批次: ${education.gaokao_level!}</p>
        <p>高考分数: ${education.gaokao_point!}</p>
        
        <#if (education.edu_history)??>
        <h3>教育经历</h3>
        	<#list education.edu_history ? sort_by("sequence") as edu_history>
		    <p>
	    		<span>起始日期: ${edu_history.start_date!}</span>
	    		<span>结束日期: ${edu_history.end_date!}</span>
	    		<span>阶段: ${edu_history.stage!}</span>
	    		<span>省份: ${edu_history.province!}</span>
	    		<span>学校: ${edu_history.school!}</span>
	    		<span>学院: ${edu_history.institude!}</span>
	    		<span>专业: ${edu_history.study!}</span>
	    		<span>研究/专业方向: ${edu_history.study_apect!}</span>
	    		<span>平均绩点: ${edu_history.gpa!}</span>
	    		<span>所获学位: ${edu_history.xuewei!}</span>
	    		<span>学习形式: ${edu_history.study_type!}</span>
	    		<span>教育类型: ${edu_history.edu_type!}</span>
	    		<span>毕业方式: ${edu_history.graduate_type!}</span>
	    		<span>毕业排名: ${edu_history.graduate_pos!}</span>
	    		
	    		<#if (edu_history.scores)??>
	    		<h4>所学课程及成绩</h4>
	    			<#list edu_history.scores as scores>
    				<p>
    					<span>课程名称: ${scores.xueke!}</span>
    					<span>成绩: ${scores.score!}</span>
    				</p>
	    			</#list>
	    		</#if>
		    </p>
			</#list>
        </#if>
    </div>
</#if> 
  
<#if (resume.rewards)??>
<#assign rewards = resume.rewards />
	<p/>
	<div id="rewards"> 
	<h2>获奖经历</h2>
	<#list rewards as reward>
	<p>
		<span>获奖名称: ${reward.name!}</span>
    	<span>获奖级别: ${reward.level!}</span>
    	<span>颁发单位: ${reward.source!}</span>
    	<span>获奖次数: ${reward.times!}</span>
    	<span>获奖时间: ${reward.date!}</span>
	</p>
	</#list>
	</div>
</#if>

<#if (resume.language)??>
<#assign language = resume.language />
	<p/>
	<div id="language"> 
		<h2>外语能力</h2>
		<p>证书级别: ${language.level!}</p>
		<p>具体成绩: ${language.score!}</p>
		<p>获证日期: ${language.date!}</p>
		<p>其他外语掌握情况: ${language.other!}</p>
		<p>方言掌握情况: ${language.local_lan!}</p>
		<p>其它说明: ${language.memo!}</p>
	</div>
</#if>

<#if (resume.computer)??>
<#assign computer = resume.computer />
	<p/>
	<div id="computer"> 
		<h2>计算机能力</h2>
		<p>证书名称: ${computer.name!}</p>
		<p>获取时间: ${computer.date!}</p>
		<p>掌握程度: ${computer.level!}</p>
	</div>
</#if>

<#if (resume.student_ganbu)??>
<#assign student_ganbu = resume.student_ganbu />
	<p/>
	<div id="student_ganbu"> 
	<h2>学生干部任职情况/学生工作</h2>
	<#list student_ganbu as ganbu>
	<p>
		<span>开始时间: ${ganbu.start_date!}</span>
    	<span>结束时间: ${ganbu.end_date!}</span>
    	<span>职务名称: ${ganbu.zhiwu_name!}</span>
    	<span>职务类别: ${ganbu.zhiwu_type!}</span>
    	<span>工作业绩: ${ganbu.memo!}</span>
	</p>
	</#list>
	</div>
</#if>

<#if (resume.trainning)??>
<#assign trainning = resume.trainning />
	<p/>
	<div id="trainning"> 
	<h2>培训经历</h2>
	<#list trainning as train>
	<p>
		<span>开始时间: ${train.start_date!}</span>
		<span>结束时间: ${train.end_date!}</span>
		<span>培训项目名称: ${train.name!}</span>
		<span>内容描述: ${train.memo!}</span>
	</p>
	</#list>
	</div>
</#if>

<#if (resume.shijian)??>
<#assign shijian = resume.shijian />
	<p/>
	<div id="shijian"> 
	<h2>实践经历</h2>
	<#list shijian as shijian_value>
	<p>
		<span>开始时间: ${shijian_value.start_date!}</span>
		<span>结束时间: ${shijian_value.end_date!}</span>
		<span>项目名称: ${shijian_value.name!}</span>
		<span>内容描述: ${shijian_value.memo!}</span>
	</p>
	</#list>
	</div>
</#if>

<#if (resume.shixi)??>
<#assign shixi = resume.shixi />
	<p/>
	<div id="shixi"> 
	<h2>实习经历</h2>
	<#list shixi as shixi_value>
	<p>
		<span>开始时间: ${shixi_value.start_date!}</span>
		<span>结束时间: ${shixi_value.end_date!}</span>
		<span>所在行业: ${shixi_value.hangye!}</span>
		<span>所在单位及部门: ${shixi_value.apartment!}</span>
		<span>所在岗位: ${shixi_value.work!}</span>
		<span>单位性质: ${shixi_value.company_type!}</span>
		<span>工作类型: ${shixi_value.work_type!}</span>
		<span>绩效考核等级: ${shixi_value.kpi_level!}</span>
		<span>工作经历描述: ${shixi_value.work_memo!}</span>
		<span>薪资（税前含福利）: ${shixi_value.salary!}</span>
		<span>证明人: ${shixi_value.zhengming_people!}</span>
		<span>证明人职务: ${shixi_value.zhengming_work!}</span>
		<span>证明人电话: ${shixi_value.zhengming_phone!}</span>
		<span>离职原因: ${shixi_value.lizhi_info!}</span>
	</p>
	</#list>
	</div>
</#if>
    
<#if (resume.zigezhengshu)??>
<#assign zigezhengshu = resume.zigezhengshu />
	<p/>
	<div id="zigezhengshu"> 
	<h2>专业职业资格证书</h2>
	<#list zigezhengshu as zhengshu>
	<p>
		<span>证书类别: ${zhengshu.type!}</span>
		<span>证书名称: ${zhengshu.name!}</span>
		<span>获得年份: ${zhengshu.got_date!}</span>
		<span>认证机构: ${zhengshu.source!}</span>
		<span>认证时间: ${zhengshu.cert_date!}</span>
		<span>证书编号: ${zhengshu.zhengshu_code!}</span>
	</p>
	</#list>
	</div>
</#if>
    
<#if (resume.family)??>
<#assign family = resume.family />
	<p/>
	<div id="family"> 
	<h2>家庭背景与社会资源</h2>
	<#list family as family_value>
	<p>
		<span>姓名: ${family_value.name!}</span>
		<span>性别: ${family_value.sex!}</span>
		<span>关系: ${family_value.relation!}</span>
		<span>出生年月: ${family_value.birthdate!}</span>
		<span>人员状态: ${family_value.status!}</span>
		<span>工作单位: ${family_value.work_place!}</span>
		<span>担任职务: ${family_value.work!}</span>
		<span>政治面貌: ${family_value.zhengzhimianmao!}</span>
		<span>教育情况: ${family_value.edu_status!}</span>
	</p>
	</#list>
	</div>
</#if>

<#if (resume.dissertation)??>
<#assign dissertation = resume.dissertation />
	<p/>
	<div id="dissertation"> 
	<h2>毕业论文及发表期刊</h2>
	<#list dissertation as dissert>
	<p>
		<span>论文/期刊名称: ${dissert.name!}</span>
		<span>刊物级别: ${dissert.level!}</span>
		<span>刊载时间/出版时间: ${dissert.date!}</span>
		<span>作者: ${dissert.author!}</span>
		<span>文章/专著简介: ${dissert.memo!}</span>
	</p>
	</#list>
	</div>
</#if>

<#if (resume.workplan)??>
<#assign workplan = resume.workplan />
	<p/>
	<div id="workplan"> 
	<h2>职业规划</h2>
	<p>未来五年的职业规划: ${workplan.plan!}</p>
	</div>
</#if>

<#if (resume.selfjudge)??>
<#assign selfjudge = resume.selfjudge />
	<p/>
	<div id="selfjudge"> 
	<h2>自我评价</h2>
	<p>自我评价: ${selfjudge.info!}</p>
	</div>
</#if>

<#if (resume.speciality)??>
<#assign speciality = resume.speciality />
	<p/>
	<div id="speciality"> 
	<h2>特长爱好</h2>
	<p>特长爱好: ${speciality.info!}</p>
	</div>
</#if>

<#if (resume.selfrecomadation)??>
<#assign selfrecomadation = resume.selfrecomadation />
	<p/>
	<div id="selfrecomadation"> 
	<h2>自荐信</h2>
	<p>自荐信: ${selfrecomadation.info!}</p>
	</div>
</#if>

<#if (resume.otherinfo)??>
<#assign otherinfo = resume.otherinfo />
	<p/>
	<div id="otherinfo"> 
	<h2>其他说明</h2>
	<p>其他说明（求职申请）: ${otherinfo.info!}</p>
	</div>
</#if>

<#if (resume.targetbank)??>
<#assign targetbank = resume.targetbank />
	<p/>
	<div id="targetbank"> 
	<h2>报考信息</h2>
	<p>报考银行: ${targetbank.bank!}</p>
	<p>报考地区: ${targetbank.area!}</p>
	<p>报考上述地区的理由: ${targetbank.reason!}</p>
	<p>期望年薪（税前含福利）: ${targetbank.expect_salary!}</p>
	<p>期望参加笔试地点: ${targetbank.exam_place!}</p>
	<p>招聘信息来源: ${targetbank.info_source!}</p>
	</div>
</#if>

<#if (resume.promise)??>
<#assign promise = resume.promise />
	<p/>
	<div id="promise"> 
	<h2>是否具有以下情况</h2>
	<p>是否曾受过处罚或处分: ${promise.is_punished ? string ("是","否")}</p>
	<p>是否曾患过重大疾病: ${promise.is_disease ? string ("是","否")}</p>
	<p>是否是本行员工: ${promise.is_thisbank_worker ? string ("是","否")}</p>
	<p>是否有亲属在本行工作: ${promise.is_relative_worker ? string ("是","否")}</p>
	</div>
</#if>
    
</div>
</body>
</html>
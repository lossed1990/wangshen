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
        table, td, th {
			border: 1px solid black;
			border-collapse: collapse;
			font-size: 15px; }
		table th { background: #aaaaaa; text-align: right; padding-right: 10px; width: 160px; }
		table td { width: 440px; padding-left: 10px; }
		.duanluo { padding-top: 10px; padding-bottom: 10px; padding-right: 10px; }
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

		<table>
			<tr>
				<th>姓名</th>
				<td>${baseinfo.name!}</td>
				<td style="width: 160px; padding: 0px; margin: 0px;" rowspan="7">
					<#if (strHeadPicPath)??>
					<img src="${strHeadPicPath}" style="width: 80px; height: 100px;"/>
					</#if>
				</td>
			</tr>
			<tr>
				<th>性别</th>
				<td>${baseinfo.sex!}</td>
			</tr>
			<tr>
				<th>出生日期</th>
				<td>${baseinfo.birth_date!}</td>
			</tr>
			<tr>
				<th>民族</th>
				<td>${baseinfo.nation!}</td>
			</tr>
			<tr>
				<th>固定电话</th>
				<td>${baseinfo.fix_phone!}</td>
			</tr>
			<tr>
				<th>手机号码</th>
				<td>${baseinfo.mobile!}</td>
			</tr>
			<tr>
				<th>电子邮件</th>
				<td>${baseinfo.email!}</td>
			</tr>
		</table>

		<p/>

		<table>
			<tr>
				<th>曾用名</th>
				<td>${baseinfo.old_name!}</td>
			</tr>
			<tr>
				<th>籍贯</th>
				<td>${baseinfo.birthplace!}</td>
			</tr>
			<tr>
				<th>政治面貌</th>
				<td>${baseinfo.party!}</td>
			</tr>
			<tr>
				<th>入党团时间</th>
				<td>${baseinfo.party_entry_date!}</td>
			</tr>
			<tr>
				<th>身高</th>
				<td>${baseinfo.height_cm!} CM</td>
			</tr>
			<tr>
				<th>体重</th>
				<td>${baseinfo.weight_kg!} KG</td>
			</tr>
			<tr>
				<th>血型</th>
				<td>${baseinfo.bloodtype!}</td>
			</tr>
			<tr>
				<th>婚姻状况</th>
				<td>${baseinfo.marrage!}</td>
			</tr>
			<tr>
				<th>生育状况</th>
				<td>${baseinfo.have_kid!}</td>
			</tr>
			<tr>
				<th>健康状况</th>
				<td>${baseinfo.heath!}</td>
			</tr>
			<tr>
				<th>生源地/高考所在地</th>
				<td>${baseinfo.gaokao_place!}</td>
			</tr>
			<tr>
				<th>现居住地</th>
				<td>${baseinfo.living_place!}</td>
			</tr>
			<tr>
				<th>通讯地址</th>
				<td>${baseinfo.address!}</td>
			</tr>
			<tr>
				<th>家庭地址</th>
				<td>${baseinfo.home_address!}</td>
			</tr>
			<tr>
				<th>户口所在地</th>
				<td>${baseinfo.hukou_place!}</td>
			</tr>
			<tr>
				<th>户口类别</th>
				<td>${baseinfo.hukou_type!}</td>
			</tr>
			<tr>
				<th>毕业时间</th>
				<td>${baseinfo.graduate_date!}</td>
			</tr>
			<tr>
				<th>参加工作时间</th>
				<td>${baseinfo.work_date!}</td>
			</tr>
			<tr>
				<th>近期生活照</th>
				<td>
				<#if (strLivePicPath)??>
					<img src="${strLivePicPath}" style="width: 200px; height: 160px;"/>
				</#if>
				</td>
			</tr>
			<tr>
				<th>学生证/学生卡照</th>
				<td>
				<#if (strStudentPicPath)??>
					<img src="${strStudentPicPath}" style="width: 200px; height: 160px;"/>
				</#if>
				</td>
			</tr>
			<tr>
				<th>证件类别</th>
				<td>${baseinfo.idcard_type!}</td>
			</tr>
			<tr>
				<th>证件号</th>
				<td>${baseinfo.idcard_num!}</td>
			</tr>
			<tr>
				<th>邮编</th>
				<td>${baseinfo.postal!}</td>
			</tr>
			<tr>
				<th>紧急联系人</th>
				<td>${baseinfo.emergency_contact!}</td>
			</tr>
			<tr>
				<th>紧急联系人电话</th>
				<td>${baseinfo.emergency_phone!}</td>
			</tr>
		</table>

    </div>
</#if>
    
<#if (resume.education)??>
<#assign education = resume.education />
    <p/>
    <div id="education">
        <h2>教育背景</h2>

		<table>
			<tr>
				<th>最高学历</th>
				<td>${education.top_grade!}</td>
			</tr>
			<tr>
				<th>高考录取批次</th>
				<td>${education.gaokao_level!}</td>
			</tr>
			<tr>
				<th>高考分数</th>
				<td>${education.gaokao_point!}</td>
			</tr>
		</table>

        <#if (education.edu_history)??>
        <h3>教育经历</h3>        	
        	<#list education.edu_history ? sort_by("sequence") as edu_history>
        	<p/>
		    <table>
		    	<tr>
			    	<th>起始日期</th>
			    	<td>${edu_history.start_date!}</td>
		    	</tr>
		    	<tr>
			    	<th>结束日期</th>
			    	<td>${edu_history.end_date!}</td>
		    	</tr>
		    	<tr>
			    	<th>阶段</th>
			    	<td>${edu_history.stage!}</td>
		    	</tr>
		    	<tr>
			    	<th>省份</th>
			    	<td>${edu_history.province!}</td>
		    	</tr>
		    	<tr>
			    	<th>学校</th>
			    	<td>${edu_history.school!}</td>
		    	</tr>
		    	<tr>
			    	<th>学院</th>
			    	<td>${edu_history.institude!}</td>
		    	</tr>
		    	<tr>
			    	<th>专业</th>
			    	<td>${edu_history.study!}</td>
		    	</tr>
		    	<tr>
			    	<th>专业方向</th>
			    	<td>${edu_history.study_apect!}</td>
		    	</tr>
		    	<tr>
			    	<th>平均绩点</th>
			    	<td>${edu_history.gpa!}</td>
		    	</tr>
		    	<tr>
			    	<th>所获学位</th>
			    	<td>${edu_history.xuewei!}</td>
		    	</tr>
		    	<tr>
			    	<th>学习形式</th>
			    	<td>${edu_history.study_type!}</td>
		    	</tr>
		    	<tr>
			    	<th>教育类型</th>
			    	<td>${edu_history.edu_type!}</td>
		    	</tr>
		    	<tr>
			    	<th>毕业方式</th>
			    	<td>${edu_history.graduate_type!}</td>
		    	</tr>
		    	<tr>
			    	<th>毕业排名</th>
			    	<td>${edu_history.graduate_pos!}</td>
		    	</tr>
		    		    		
	    		<#if (edu_history.scores)??>
	    		<tr>
	    		<th>所学课程及成绩</th>
	    			<td>
	    			<#list edu_history.scores as scores>
	    			<p>
    					<span>${scores.xueke!}: </span>
    					<span>${scores.score!}</span>
    				</p>
	    			</#list>
	    			</td>
	    		</tr>
	    		</#if>
	    	</table>
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
	<p/>
	<table>
	<tr>
		<th>获奖名称</th>
		<td>${reward.name!}</td>
	</tr>
	<tr>
		<th>获奖级别</th>
		<td>${reward.level!}</td>
	</tr>
	<tr>
		<th>颁发单位</th>
		<td>${reward.source!}</td>
	</tr>
	<tr>
		<th>获奖次数</th>
		<td>${reward.times!}</td>
	</tr>
	<tr>
		<th>获奖时间</th>
		<td>${reward.date!}</td>
	</tr>
	</table>
	</#list>
	</div>
</#if>

<#if (resume.language)??>
<#assign language = resume.language />
	<p/>
	<div id="language"> 
		<h2>外语能力</h2>

		<p>
		<table>
			<tr>
				<th>证书级别</th>
				<td>${language.level!}</td>
			</tr>
			<tr>
				<th>具体成绩</th>
				<td>${language.score!}</td>
			</tr>
			<tr>
				<th>获证日期</th>
				<td>${language.date!}</td>
			</tr>
			<tr>
				<th>其他外语掌握情况</th>
				<td>${language.other!}</td>
			</tr>
			<tr>
				<th>方言掌握情况</th>
				<td>${language.local_lan!}</td>
			</tr>
			<tr>
				<th>其它说明</th>
				<td>${language.memo!}</td>
			</tr>
		</table>
		</p>
	</div>
</#if>

<#if (resume.computer)??>
<#assign computer = resume.computer />
	<p/>
	<div id="computer"> 
		<h2>计算机能力</h2>
		<p>
		<table>
			<tr>
				<th>证书名称</th>
				<td>${computer.name!}</td>
			</tr>
			<tr>
				<th>获取时间</th>
				<td>${computer.date!}</td>
			</tr>
			<tr>
				<th>掌握程度</th>
				<td>${computer.level!}</td>
			</tr>
		</table>
		</p>
	</div>
</#if>

<#if (resume.student_ganbu)??>
<#assign student_ganbu = resume.student_ganbu />
	<p/>
	<div id="student_ganbu"> 
	<h2>学生干部任职情况/学生工作</h2>
	<#list student_ganbu as ganbu>
	<p/>
	<table>
		<tr>
			<th>开始时间</th>
			<td>${ganbu.start_date!}</td>
		</tr>
		<tr>
			<th>结束时间</th>
			<td>${ganbu.end_date!}</td>
		</tr>
		<tr>
			<th>职务名称</th>
			<td>${ganbu.zhiwu_name!}</td>
		</tr>
		<tr>
			<th>职务类别</th>
			<td>${ganbu.zhiwu_type!}</td>
		</tr>
		<tr>
			<th>工作业绩</th>
			<td>${ganbu.memo!}</td>
		</tr>
	</table>
	</#list>
	</div>
</#if>

<#if (resume.trainning)??>
<#assign trainning = resume.trainning />
	<p/>
	<div id="trainning"> 
	<h2>培训经历</h2>
	<#list trainning as train>
	<p/>
	<table>
		<tr>
			<th>开始时间</th>
			<td>${train.start_date!}</td>
		</tr>
		<tr>
			<th>结束时间</th>
			<td>${train.end_date!}</td>
		</tr>
		<tr>
			<th>培训项目名称</th>
			<td>${train.name!}</td>
		</tr>
		<tr>
			<th>内容描述</th>
			<td>${train.memo!}</td>
		</tr>
	</table>
	</#list>
	</div>
</#if>

<#if (resume.shijian)??>
<#assign shijian = resume.shijian />
	<p/>
	<div id="shijian"> 
	<h2>实践经历</h2>
	<#list shijian as shijian_value>
	<p/>
	<table>
		<tr>
			<th>开始时间</th>
			<td>${shijian_value.start_date!}</td>
		</tr>
		<tr>
			<th>结束时间</th>
			<td>${shijian_value.end_date!}</td>
		</tr>
		<tr>
			<th>项目名称</th>
			<td>${shijian_value.name!}</td>
		</tr>
		<tr>
			<th>内容描述</th>
			<td>${shijian_value.memo!}</td>
		</tr>
	</table>
	</#list>
	</div>
</#if>

<#if (resume.shixi)??>
<#assign shixi = resume.shixi />
	<p/>
	<div id="shixi"> 
	<h2>实习经历</h2>
	<#list shixi as shixi_value>
	<p/>
	<table>
		<tr>
			<th>开始时间</th>
			<td>${shixi_value.start_date!}</td>
		</tr>
		<tr>
			<th>结束时间</th>
			<td>${shixi_value.end_date!}</td>
		</tr>
		<tr>
			<th>所在行业</th>
			<td>${shixi_value.hangye!}</td>
		</tr>
		<tr>
			<th>所在单位及部门</th>
			<td>${shixi_value.apartment!}</td>
		</tr>
		<tr>
			<th>所在岗位</th>
			<td>${shixi_value.work!}</td>
		</tr>
		<tr>
			<th>单位性质</th>
			<td>${shixi_value.company_type!}</td>
		</tr>
		<tr>
			<th>工作类型</th>
			<td>${shixi_value.work_type!}</td>
		</tr>
		<tr>
			<th>绩效考核等级</th>
			<td>${shixi_value.kpi_level!}</td>
		</tr>
		<tr>
			<th>工作经历描述</th>
			<td>${shixi_value.work_memo!}</td>
		</tr>
		<tr>
			<th>薪资（税前含福利）</th>
			<td>${shixi_value.salary!}</td>
		</tr>
		<tr>
			<th>证明人</th>
			<td>${shixi_value.zhengming_people!}</td>
		</tr>
		<tr>
			<th>证明人职务</th>
			<td>${shixi_value.zhengming_work!}</td>
		</tr>
		<tr>
			<th>证明人电话</th>
			<td>${shixi_value.zhengming_phone!}</td>
		</tr>
		<tr>
			<th>离职原因</th>
			<td>${shixi_value.lizhi_info!}</td>
		</tr>
	</table>
	</#list>
	</div>
</#if>
    
<#if (resume.zigezhengshu)??>
<#assign zigezhengshu = resume.zigezhengshu />
	<p/>
	<div id="zigezhengshu"> 
	<h2>专业职业资格证书</h2>
	<#list zigezhengshu as zhengshu>
	<p/>
	<table>
		<tr>
			<th>证书类别</th>
			<td>${zhengshu.type!}</td>
		</tr>
		<tr>
			<th>证书名称</th>
			<td>${zhengshu.name!}</td>
		</tr>
		<tr>
			<th>获得年份</th>
			<td>${zhengshu.got_date!}</td>
		</tr>
		<tr>
			<th>认证机构</th>
			<td>${zhengshu.source!}</td>
		</tr>
		<tr>
			<th>认证时间</th>
			<td>${zhengshu.cert_date!}</td>
		</tr>
		<tr>
			<th>证书编号</th>
			<td>${zhengshu.zhengshu_code!}</td>
		</tr>
	</table>
	</#list>
	</div>
</#if>
    
<#if (resume.family)??>
<#assign family = resume.family />
	<p/>
	<div id="family"> 
	<h2>家庭背景与社会资源</h2>
	<#list family as family_value>
	<p/>
	<table>
		<tr>
			<th>姓名</th>
			<td>${family_value.name!}</td>
		</tr>
		<tr>
			<th>性别</th>
			<td>${family_value.sex!}</td>
		</tr>
		<tr>
			<th>关系</th>
			<td>${family_value.relation!}</td>
		</tr>
		<tr>
			<th>出生年月</th>
			<td>${family_value.birthdate!}</td>
		</tr>
		<tr>
			<th>人员状态</th>
			<td>${family_value.status!}</td>
		</tr>
		<tr>
			<th>工作单位</th>
			<td>${family_value.work_place!}</td>
		</tr>
		<tr>
			<th>担任职务</th>
			<td>${family_value.work!}</td>
		</tr>
		<tr>
			<th>政治面貌</th>
			<td>${family_value.zhengzhimianmao!}</td>
		</tr>
		<tr>
			<th>教育情况</th>
			<td>${family_value.edu_status!}</td>
		</tr>
	</table>
	</#list>
	</div>
</#if>

<#if (resume.dissertation)??>
<#assign dissertation = resume.dissertation />
	<p/>
	<div id="dissertation"> 
	<h2>毕业论文及发表期刊</h2>
	<#list dissertation as dissert>
	<p/>
	<table>
		<tr>
			<th>论文/期刊名称</th>
			<td>${dissert.name!}</td>
		</tr>
		<tr>
			<th>刊物级别</th>
			<td>${dissert.level!}</td>
		</tr>
		<tr>
			<th>刊载时间/出版时间</th>
			<td>${dissert.date!}</td>
		</tr>
		<tr>
			<th>作者</th>
			<td>${dissert.author!}</td>
		</tr>
		<tr>
			<th>文章/专著简介</th>
			<td>${dissert.memo!}</td>
		</tr>
	</table>
	</#list>
	</div>
</#if>

<#if (resume.workplan)??>
<#assign workplan = resume.workplan />
	<p/>
	<div id="workplan"> 
	<h2>职业规划</h2>
	<p>
	<table>
		<tr>
			<th>未来五年职业规划</th>
			<td class="duanluo">${workplan.plan!}</td>
		</tr>
	</table>
	</p>
	</div>
</#if>

<#if (resume.selfjudge)??>
<#assign selfjudge = resume.selfjudge />
	<p/>
	<div id="selfjudge"> 
	<h2>自我评价</h2>
	<p>
	<table>
		<tr>
			<th>自我评价</th>
			<td class="duanluo">${selfjudge.info!}</td>
		</tr>
	</table>
	</p>
	</div>
</#if>

<#if (resume.speciality)??>
<#assign speciality = resume.speciality />
	<p/>
	<div id="speciality"> 
	<h2>特长爱好</h2>
	<p>
	<table>
		<tr>
			<th>特长爱好</th>
			<td class="duanluo">${speciality.info!}</td>
		</tr>
	</table>
	</p>
	</div>
</#if>

<#if (resume.selfrecomadation)??>
<#assign selfrecomadation = resume.selfrecomadation />
	<p/>
	<div id="selfrecomadation"> 
	<h2>自荐信</h2>
	<p>
	<table>
		<tr>
			<th>自荐信</th>
			<td class="duanluo">${selfrecomadation.info!}</td>
		</tr>
	</table>
	</p>
	</div>
</#if>

<#if (resume.otherinfo)??>
<#assign otherinfo = resume.otherinfo />
	<p/>
	<div id="otherinfo"> 
	<h2>其他说明</h2>
	<p>
	<table>
		<tr>
			<th>其他说明/求职申请</th>
			<td class="duanluo">${otherinfo.info!}</td>
		</tr>
	</table>
	</p>
	</div>
</#if>

<#if (resume.targetbank)??>
<#assign targetbank = resume.targetbank />
	<p/>
	<div id="targetbank"> 
	<h2>报考信息</h2>
	<p>
	<table>
		<tr>
			<th>报考银行</th>
			<td>${targetbank.bank!}</td>
		</tr>
		<tr>
			<th>报考地区</th>
			<td>${targetbank.area!}</td>
		</tr>
		<tr>
			<th>报考上述地区的理由</th>
			<td>${targetbank.reason!}</td>
		</tr>
		<tr>
			<th>期望年薪(税前含福利)</th>
			<td>${targetbank.expect_salary!}</td>
		</tr>
		<tr>
			<th>期望参加笔试地点</th>
			<td>${targetbank.exam_place!}</td>
		</tr>
		<tr>
			<th>招聘信息来源</th>
			<td>${targetbank.info_source!}</td>
		</tr>
	</table>
	</p>
	</div>
</#if>

<#if (resume.promise)??>
<#assign promise = resume.promise />
	<p/>
	<div id="promise"> 
	<h2>是否具有以下情况</h2>
	<p>
	<table>
		<tr>
			<th>是否曾受过处罚或处分</th>
			<td>${promise.is_punished ? string ("是","否")}</td>
		</tr>
		<tr>
			<th>是否曾患过重大疾病</th>
			<td>${promise.is_disease ? string ("是","否")}</td>
		</tr>
		<tr>
			<th>是否是本行员工</th>
			<td>${promise.is_thisbank_worker ? string ("是","否")}</td>
		</tr>
		<tr>
			<th>是否有亲属在本行工作</th>
			<td>${promise.is_relative_worker ? string ("是","否")}</td>
		</tr>
	</table>
	</p>
	</div>
</#if>
    
</div>
</body>
</html>
# 页面设计
## 一、页面概览及跳转流程
- 学员注册界面
    - [Y] 注册成功界面
    - [N] 注册界面

- 登陆界面
    - [Y] 学员首页 | 管理员首页 
    - [N] 登陆界面

- 管理员首页菜单
    - 学员简历信息浏览：表格分页形式展示所有简历，每一条记录提供‘详情’和‘修改’操作；
        - 详情：跳转到简历预览界面，提供‘导出’操作
            - 导出： 直接下载保存为word文档
        - 修改：跳转到简历编辑界面
            - 评分： 弹出评分和广告界面
    - 银行简历模板配置：表格分页形式展示所有模板，每一条模板提供‘修改’和‘删除’操作；表格下方提供新增按钮
        - 新增：跳转到模板编辑界面
        - 修改：跳转到模板编辑界面
        - 删除：自身
    - 广告界面配置：富文本编辑界面

- 学员首页菜单
   - 新建简历： 模块化罗列所有的银行简历模板入口
       - 新建：跳转到简历编辑界面
           - 评分： 弹出评分和广告界面
   - 我的简历： 表格分页形式展示所有简历，每一条记录提供‘修改’和‘预览’操作；
       - 修改：跳转到简历编辑界面
           - 评分： 弹出评分和广告界面
       - 预览：跳转到简历预览界面，提供‘导出’操作
           - 评分： 直接弹出评分和广告界面（待定）
           - 导出： 直接下载保存为word文档

- 简历预览界面：按最新的简历模板（匹配简历模板名称，不使用ID，模板删除后列表中不显示），显示所填内容；

- 简历编辑界面：按最新的简历模板（匹配简历模板名称，不使用ID，模板删除后列表中不显示），显示所需的18项子集；

- 模板编辑界面：不按步骤分配，从上到下排列18大项，每一项可选择是否启用，启用后，可设置评分规则；

- 广告编辑界面：富文本编辑界面

- 评分展示界面：分值 + 每项分值柱状图 + 广告
           
- - - -           
## 二、页面与源码文件对应关系
### 1、主界面
- 注册 | 登陆界面  
    - 【关联文件】 page_user_login.ftl 
    - 【编码状态】 初步完成
- 管理员主页
    - 【关联文件】 page_admin_wellcome.ftl 
    - 【编码状态】 初步完成     
- 学员主页  
    - 【关联文件】 page_user_wellcome.ftl 
    - 【编码状态】 初步完成                  
- 简历浏览界面
    - 【关联文件】 page_resume_list.ftl 
    - 【编码状态】 初步完成 
- 简历预览界面
    - 【关联文件】 page_resume_view.ftl 
    - 【编码状态】 初步完成
- 简历编辑界面
    - 【关联文件】 page_resume_edit.ftl
    - 【编码状态】 初步完成
- 简历模板浏览界面
    - 【关联文件】 page_resumetemplates_list.ftl 
    - 【编码状态】 初步完成
- 简历模板编辑界面
    - 【关联文件】 page_resumetemplates_edit.ftl 
    - 【编码状态】 未启动
- 广告配置界面
    - 【关联文件】 page_ads_edit.ftl 
    - 【编码状态】 初步完成
- 新建简历界面
    - 【关联文件】 page_resume_add.ftl 
    - 【编码状态】 初步完成
- 评分展示界面
    - 【关联文件】 Score.ftl 
    - 【编码状态】 未启动

### 2、简历编辑|预览子界面
- 个人基本信息
    - 【编辑】 div_resume_edit_personal.ftl
    - 【预览】 div_resume_view_personal.ftl
- 教育背景
    - 【编辑】 div_resume_edit_education.ftl
    - 【预览】 div_resume_view_education.ftl
- 获奖阶段
    - 【编辑】 div_resume_edit_awards.ftl    
    - 【预览】 div_resume_view_awards.ftl
- 英语能力描述
    - 【编辑】 div_resume_edit_language.ftl
    - 【预览】 div_resume_view_language.ftl
- 计算机能力描述
    - 【编辑】 div_resume_edit_computer.ftl     
    - 【预览】 div_resume_view_computer.ftl
- 学生干部任职情况/学生工作
    - 【编辑】 div_resume_edit_student_works.ftl     
    - 【预览】 div_resume_view_student_works.ftl
- 培训经历
    - 【编辑】 div_resume_edit_train.ftl     
    - 【预览】 div_resume_view_train.ftl
- 实践经历
    - 【编辑】 div_resume_edit_practice.ftl     
    - 【预览】 div_resume_view_practice.ftl
- 实习经历
    - 【编辑】 div_resume_edit_work.ftl     
    - 【预览】 div_resume_view_work.ftl
- 专业职业资格证书
    - 【编辑】 div_resume_edit_certificate.ftl     
    - 【预览】 div_resume_view_certificate.ftl
- 家庭背景与社会资源
    - 【编辑】 div_resume_edit_family.ftl     
    - 【预览】 div_resume_view_family.ftl
- 毕业论文及发表期刊
    - 【编辑】 div_resume_edit_dissertation.ftl     
    - 【预览】 div_resume_view_dissertation.ftl
- 职业规划
    - 【编辑】 div_resume_edit.ftl     
    - 【预览】 div_resume_edit.ftl
- 自我评价
    - 【编辑】 div_resume_edit.ftl     
    - 【预览】 div_resume_edit.ftl
- 特长爱好
    - 【编辑】 div_resume_edit.ftl     
    - 【预览】 div_resume_edit.ftl
- 自荐信
    - 【编辑】 div_resume_edit.ftl     
    - 【预览】 div_resume_edit.ftl
- 其他说明
    - 【编辑】 div_resume_edit.ftl     
    - 【预览】 div_resume_edit.ftl
- - - -           
## 三、评分规则协议
- 是否填写 【type:1】
```javascript
{
    "name":"是否填写",
    "type":1,
    "score":0
}
```
- 是否为手机号 【type:2】
```javascript
{
    "name":"手机号",
    "type":2,
    "score":0
}
```
- 是否为身份证 【type:3】
```javascript
{
    "name":"身份证",
    "type":3,
    "score":0
}
```
- 关键词规则 【type:4】 备注：关键词有重合，例如“好”、“很好”，后台分别匹配加分，配置问题，不做特殊处理；
```javascript
{
    "name":"关键词",
    "type":4,
    "rule":[
        {
            "key":"XXX",
            "score":0
        },
        {
            "key":"XXX1",
            "score":0
        }
        ...
    ],
    "max":0
}
```
- 身高规则 【type:5】 备注：身高范围有重合，默认匹配第一个范围。begin：大于；end：小于等于；flag：是否影响整体得分；
```javascript
{
    "name":"身高",
    "type":5,
    "male":[
        {
            "begin":0,
            "end":150,
            "score":0,
            "flag":true
        },
        {
            "begin":150,
            "end":180,
            "score":0,
            "flag":false
        }
        ...
    ],
    "female":[
        {
            "begin":0,
            "end":150,
            "score":0,
            "flag":true
        },
        {
            "begin":150,
            "end":180,
            "score":0,
            "flag":false
        }
        ...
    ]
}
```
- 体重规则 【type:6】 备注：体重范围有重合，默认匹配第一个范围。begin：大于；end：小于等于；flag：是否影响整体得分；
```javascript
{
    "name":"体重",
    "type":6,
    "rule":[
        {
            "begin":0,
            "end":150,
            "score":0,
            "flag":true
        },
        {
            "begin":150,
            "end":180,
            "score":0,
            "flag":false
        }
        ...
    ]
}
```
- 字数规则 【type：7】
```javascript
{
    "name":"字数",
    "type":7,
    "rule":[
        {
            "begin":0,
            "end":150,
            "score":0
        },
        {
            "begin":150,
            "end":180,
            "score":0
        }
        ...
    ],
    "max":0
}
```
- 数字范围规则 【type：8】
```javascript
{
    "name":"数字范围",
    "type":8,
    "rule":[
        {
            "begin":0,
            "end":150,
            "score":0
        },
        {
            "begin":150,
            "end":180,
            "score":0
        }
        ...
    ],
    "max":0
}
```

## 四、控件scorerule.js使用说明
```javascript
/*
 * 1、在某个元素下，生成字段规则设置界面
 * 
 * @param 字段数组，#用于分隔字段名称及特定规则；逗号用于分隔各个规则；
 * 
 * @note '姓名#1，2，3' 表示创建"姓名"字段，该字段默认可选择1、2、3种模板；type值参考上述《评分规则协议》
 * /

//调用示例
$('#personal_scorerule').scorerule(['姓名','曾用名#1',...]);
```

## 五、简历模板相关接口
#### 1、新建简历模板
#### URI: /resumetmpl/resumetemplates-new.page
#### METHOD: FORM POST, 同步
#### FORM参数:
> templatename=模板名称

> templatecover_id=模板图片id

【结果】跳转“模板编辑界面” 
#### URI: /resumetmpl/resumetemplates-edit.page

【备注】“模板编辑界面”通过request(temp_id)，获取模板ID

### 2、启用|不启用模板（不删除简历）
#### URI: /resumetmpl/resumetemplates-enable.json
#### METHOD: JSON POST，异步
#### JSON参数:
```javascript
{
    "temp_id"	: "xxx",
    "enable"	: true/false
}
```
//反馈参数：公共结构

### 3、修改模板模块
#### URI: /resumetmpl/resumetemplates-part-save.json
#### METHOD: JSON POST，异步
#### JSON参数:
```javascript
{
    "temp_id"	:"xxxxx",
    "key"	:"baseinfo",
    "value"	:{xxxxx}
}
```
//反馈参数：公共结构

### 4、修改模板名称
#### URI: /resumetmpl/resumetemplates-mod-name.json
#### METHOD: JSON POST，异步
#### JSON参数:
```javascript
{
    "temp_id"	:"xxxxx",
    "new_name"	:"XXX"
}
```
//反馈参数：公共结构

### 5、修改模板图片
#### URI: /resumetmpl/resumetemplates-mod-cover.json
#### METHOD: JSON POST，异步
#### JSON参数:
```javascript
{
    "temp_id"	:"xxxxx",
    "new_cover_id"	:"XXX"
}
```
//反馈参数：公共结构

### 6、删除模板（同时删除相关简历）
#### URI: /resumetmpl/resumetemplates-purgeremove.json
#### METHOD: GET，异步
#### GET参数:
> temp_id=模板id

//反馈参数：公共结构

### 7、获取所有模板（概览）
#### URI: /resumetmpl/resumetemplates-list.page
#### METHOD: GET，同步
#### GET参数:无
【结果】跳转“模板列表界面” 

### 8、获取模板详情
#### URI: /resumetmpl/resumetemplates-detail.json
#### METHOD: GET，异步
#### GET参数:
> temp_id=模板id

//反馈参数：公共结构，result字段为模板json

## 六、简历相关接口
### 1、新建/编辑简历
#### URI: /resume/resume-edit.page
#### METHOD: GET，异步
#### GET参数:

#### 新建简历
> temp_id=模板id

【结果】跳转“简历编辑界面”
 通过request(temp_id),获取模板id
 通过request(resume_guid),获取新建简历guid
 
#### 修改简历
> resume_guid=简历guid

【结果】跳转“简历编辑界面”
 通过$(temp_id),获取模板id
 通过$(resume_guid),获取新建简历guid


### 2、删除简历
#### URI: /resume/resume-remove.json
#### METHOD: GET，异步
#### GET参数:
> resume_id=简历guid

//反馈参数：公共结构

### 3、保存简历某一模块
#### URI: /resume/resume-part-save.json
#### METHOD: JSON POST，异步
#### JSON 参数:
```javascript
{
    "resume_id"		:"xxxxx-x-xxx",
    "section_name"	:"baseinfo",
    "value"		:{xxxxx}
}
```
//反馈参数：公共结构

### 4、获取简历某一模块详情
#### URI: /resume/resume-part-detail.json
#### METHOD: GET，异步
#### GET参数:
> resume_id=简历guid

> section_name=模块名称

//反馈参数：公共结构, result字段为简历对应模块json

### 5、获取简历详情
#### URI: /resume/resume-view.page
#### METHOD: GET，同步
#### GET参数:
> resume_id=简历guid

【结果】跳转“简历预览界面” 

## 七、所有异步JSON返回
```javascript
{
    "ok": true/false,
    "errorinfo":"xxxxxx",
    "result" : {
        xxxx
    }
}
```

## 八、简历内容json协议
```javascript
{
	"baseinfo": {
		"name": "张嘎",
		"old_name": "",
		"sex": "男",
		"birth_date": "1999-10-20",
		"nation": "汉族",
		"birthplace": "江苏盐城",
		"party": "团员",
		"party_entry_date": "1999-11-22",
		"height_cm": 180,
		"weight_kg": 100,
		"bloodtype": "AB",
		"marrage": "未婚",
		"have_kid": "已育",
		"heath": "健康",
		"gaokao_place": "江苏",
		"living_place": "江苏盐城",
		"address": "江苏盐城工业园大棚基地98#",
		"home_address": "开城工业园区2012号5#",
		"hukou_place": "江苏",
		"hukou_type": "城镇户口",
		"graduate_date": "1999-10-10",
		"work_date": "1999-10-11",
		"head_pic": "IMG23000210214547",
		"live_pic": "IMG23000210214547",
		"student_pic": "IMG23000210214547",
		"idcard_type": "身份证",
		"idcard_num": "3065421454125478154",
		"email": "type@live.com",
		"fix_phone": "021-87541247",
		"mobile": "159211214231",
		"postal": "220002",
		"emergency_contact": "大老板",
		"emergency_phone": "15689745414"
	},
	"education": {
		"top_grade": "本科",
		"gaokao_level": "一本",
		"gaokao_point": 655,
		"edu_history": [{
			"sequence": 1,
			"start_date": "1999-10-10",
			"end_date": "1999-10-10",
			"stage": "高中",
			"province": "湖北",
			"school": "武汉外国语学院",
			"institude": "学院",
			"study": "英语",
			"study_apect": "同声传译",
			"gpa": "A",
			"xuewei": "硕士",
			"study_type": "全日制普通",
			"edu_type": "脱产",
			"graduate_type": "毕业",
			"graduate_pos": "15",
			"scores": [{
					"xueke": "英语",
					"score": 99
				},
				{
					"xueke": "数学",
					"score": 61
				},
				{
					"xueke": "政治",
					"score": 68
				}
			]
		}]
	},
	"rewards": [{
			"name": "青少年歌曲大赛",
			"level": "市级",
			"source": "青歌赛业余评审组",
			"times": "1次",
			"date": "1922-10-10"
		},
		{
			"name": "中科杯同声传译锦标赛",
			"level": "市级",
			"source": "中科传媒",
			"times": "1次",
			"date": "1923-10-10"
		}
	],
	"language": {
		"level": "英语六级",
		"score": "600",
		"date": "1999-12-12",
		"other": "葡萄牙语",
		"local_lan": "吴语",
		"memo": "能做到流利对话，写作，公式文章撰写"
	},
	"computer": {
		"name": "计算机等级证书",
		"date": "1999-12-12",
		"level": "一级"
	},
	"student_ganbu": [{
			"start_date": "1999-11-11",
			"end_date": "1999-11-11",
			"zhiwu_name": "学生会长",
			"zhiwu_type": "学生会",
			"memo": "独立运营学生会日常工作"
		},
		{
			"start_date": "1999-11-11",
			"end_date": "1999-11-11",
			"zhiwu_name": "乒乓球协会主席",
			"zhiwu_type": "乒乓球协会",
			"memo": "乒乓球王牌选手"
		}
	],
	"trainning": [{
			"start_date": "1999-11-11",
			"end_date": "1999-11-11",
			"name": "野外生存训练营",
			"memo": "培养在极端情况下的身体和心理的抗压能力"
		},
		{
			"start_date": "1998-11-11",
			"end_date": "1998-11-11",
			"name": "民族唱法培训",
			"memo": "培训关于国内歌曲的民族唱法演示训练"
		}
	],
	"shijian": [{
		"start_date": "1999-11-11",
		"end_date": "1999-11-11",
		"name": "街头卖艺",
		"memo": "通过学习到的民族唱法在街头卖艺，评估学习成果，结果令人欣慰"
	}],
	"shixi": [{
		"start_date": "1999-11-11",
		"end_date": "1999-11-11",
		"hangye": "银行",
		"apartment": "内审部",
		"work": "内审簿记",
		"company_type": "国营央企",
		"work_type": "实习",
		"kpi_level": "优秀",
		"work_memo": "通过在内审部的学习，掌握了银行内审的实际步骤和学习必要知识",
		"salary": "5K",
		"zhengming_people": "张大锤",
		"zhengming_work": "内审部经理",
		"zhengming_phone": "153541214587",
		"lizhi_info": "实习到期"
	}],
	"zigezhengshu": [{
			"type": "外语资格证书",
			"name": "英语四级证书",
			"got_date": "1999-10-10",
			"source": "CET",
			"cert_date": "1999-10-10",
			"zhengshu_code": "X59874EF"
		},
		{
			"type": "外语资格证书",
			"name": "英语六级证书",
			"got_date": "1999-10-10",
			"source": "CET",
			"cert_date": "1999-10-10",
			"zhengshu_code": "BB69874EF"
		}
	],
	"family": [{
			"name": "张大噶",
			"sex": "男",
			"relation": "父子",
			"birthdate": "1999-10-10",
			"status": "有工作",
			"work_place": "浙江",
			"work": "经理",
			"zhengzhimianmao": "党员",
			"edu_status": "本科",
			"contact":"15921212121"
		},
		{
			"name": "西门吹雪",
			"sex": "女",
			"relation": "母子",
			"birthdate": "1999-10-10",
			"status": "有工作",
			"work_place": "浙江",
			"work": "专员",
			"zhengzhimianmao": "党员",
			"edu_status": "本科",
			"contact":"15921212121"
		}
	],
	"dissertation": [{
			"name": "自然",
			"level": "国际期刊",
			"date": "1999-10-10",
			"author": "张嘎",
			"memo": "证明自然人在自然中的非线性能量推动"
		},
		{
			"name": "自然",
			"level": "国际期刊",
			"date": "1999-10-11",
			"author": "张嘎",
			"memo": "反驳证明自然人在自然中的非线性能量推动"
		}
	],
	"workplan": {
		"plan": "从大学毕业后，先进入实习单位进行为期一年的实习，实习完成后进入银行行业进工作，在柜待满3年后转正成后台经理，熟悉银行内审部业务，最后升职为内审部经理"
	},
	"selfjudge": {
		"info": "本身活泼开朗，身体健康，有集体意识和荣誉感，可以为集体牺牲自己的小利益，天生对数字敏感，可以胜任银行内的各种工作"
	},
	"speciality": {
		"info": "本人会唱歌，跳舞，弹钢琴，拉小提琴，大提琴，架子鼓等，多才多艺，无人能敌"
	},
	"selfrecomadation": {
		"info": "自荐本人进入贵银行的内审部门，本人凭借自己出色的数字敏感性，簿记的严谨性，完成各种复杂的内审工作"
	},
	"otherinfo": {
		"info": "我进入银行后，必将严格遵守银行的各种规章制度，为银行的建设添砖加瓦"
	},
	"targetbank": {
		"bank": "中国农业银行",
		"area": "江苏盐城",
		"reason": "离家里更近",
		"expect_salary": "12K",
		"exam_place": "江苏盐城",
		"info_source": "银行招聘网站"
	},
	"promise": {
		"is_punished": true,
		"is_disease": true,
		"is_thisbank_worker": true,
		"is_relative_worker": true,
		"is_obey_tiaoji": true
	}
}
```

## 九、简历模板规则json协议
```javascript
{
  "baseinfo": {
    "show": true,
    "max": 121,
    "keys": [
      {
        "keypath": "baseinfo.name",
        "enable": true,
        "judge": {
          "name": "是否填写",
          "type": 1,
          "score": 1
        }
      },
      {
        "keypath": "baseinfo.mobile",
        "enable": true,
        "judge": {
          "name": "是否填写",
          "type": 1,
          "score": 1
        }
      }
    ]
  },
  "education": {
    "show": true,
    "max": 12,
    "keys": [
      {
        "keypath": "education.gaokao_point",
        "enable": true,
        "judge": {
          "name": "分数",
          "type": 8,
          "rule": [
            {
              "begin": 0,
              "end": 150,
              "score": 0
            },
            {
              "begin": 150,
              "end": 300,
              "score": 1
            }
          ],
          "max": 5
        }
      },
      {
        "keypath": "education.edu_history.scores.score",
        "enable": true,
        "judge": {
          "name": "分数",
          "type": 8,
          "rule": [
            {
              "begin": 0,
              "end": 150,
              "score": 0
            },
            {
              "begin": 150,
              "end": 300,
              "score": 1
            }
          ],
          "max": 5
        }
      }
    ]
  }
....
}
```


## 十、文件上传下载接口
### 1. 文件上传
#### URI: /file/common-upload.json
#### METHOD: FORM POST，异步 
#### FORM参数:
> file=上传文件

//反馈参数：公共结构, result字段为文件ID

### 2. 文件下载
#### URI: /file/download.page
#### METHOD: GET，数据流 
#### GET参数:
> fid=文件id

//反馈为二进制数据流，可以直接用于下载或者img，video标签的src属性

## 十一、广告设置接口
### 1. 广告设置
#### URI: /config/ads-save.json
#### METHOD: AJAX POST，异步 
#### JSON参数:
```javascript
{
"data":"xxxxxxxxxxxxxxxxxxxx"
}
```

//反馈参数：公共结构

### 2. 广告获取
#### URI: /config/ads-get.json
#### METHOD:AJAX GET，异步
#### GET参数: 无

//反馈参数：公共结构, result字段为广告的base64编码


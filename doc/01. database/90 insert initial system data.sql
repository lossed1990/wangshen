--系统初始化数据
USE wangshen;

--插入初始admin用户，密码123456
INSERT INTO users(un_uid, c_username, c_mobilenumder, c_passhash, dtime_registertime, dtime_lastmodified, bi_deleteflag) VALUES(63, 'admin', NULL, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', now(), now(), False);

--插入所有模块信息
INSERT INTO config(vc_key, vc_value) VALUES('base_sections', '[\r\n    {\r\n        "section_key": "baseinfo",\r\n        "section_name": "个人基本信息"\r\n    },\r\n    {\r\n        "section_key": "education",\r\n        "section_name": "教育背景"\r\n    },\r\n    {\r\n        "section_key": "rewards",\r\n        "section_name": "获奖经历"\r\n    },\r\n    {\r\n        "section_key": "language",\r\n        "section_name": "外语能力"\r\n    },\r\n    {\r\n        "section_key": "computer",\r\n        "section_name": "计算机能力"\r\n    },\r\n    {\r\n        "section_key": "student_ganbu",\r\n        "section_name": "学生工作"\r\n    },\r\n    {\r\n        "section_key": "trainning",\r\n        "section_name": "培训经历"\r\n    },\r\n    {\r\n        "section_key": "shijian",\r\n        "section_name": "实践经历"\r\n    },\r\n    {\r\n        "section_key": "shixi",\r\n        "section_name": "实习经历"\r\n    },\r\n    {\r\n        "section_key": "zigezhengshu",\r\n        "section_name": "专业职业资格证书"\r\n    },\r\n    {\r\n        "section_key": "family",\r\n        "section_name": "家庭背景与社会资源"\r\n    },\r\n    {\r\n        "section_key": "dissertation",\r\n        "section_name": "毕业论文及发表期刊"\r\n    },\r\n    {\r\n        "section_key": "workplan",\r\n        "section_name": "职业规划"\r\n    },\r\n    {\r\n        "section_key": "selfjudge",\r\n        "section_name": "自我评价"\r\n    },\r\n    {\r\n        "section_key": "speciality",\r\n        "section_name": "特长爱好"\r\n    },\r\n    {\r\n        "section_key": "selfrecomadation",\r\n        "section_name": "自荐信"\r\n    },\r\n    {\r\n        "section_key": "otherinfo",\r\n        "section_name": "其他说明"\r\n    }\r\n]');

--插入短信平台初始设置，仅供测试用
INSERT INTO config(vc_key, vc_value) VALUES('wx_mobile', '{"appkey":"276aaaed443248b7fbcb18414007083f","content":"【学信学院】验证码为：*, 欢迎注册平台, 5分钟内有效","uri":"https://way.jd.com/chuangxin/dxjk"}');

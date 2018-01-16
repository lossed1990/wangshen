## 页面设计
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
## 页面文件名称
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

### 1、简历编辑子界面
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


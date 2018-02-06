<#assign path=request.contextPath />
<#assign as_currentuser="张大锤" />
<!DOCTYPE html>
<html lang="zh">

<#include "inc/inc_header.ftl" />

<link href="${path}/vendors/bootstrapvalidator/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="${path}/vendors/bootstrap-fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css">
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <#include "inc/inc_leftmenu_user.ftl" />

        <#include "inc/inc_toprightnav.ftl" />

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="row">
                    <!--  个人基本信息  -->  
                    <#include "div/div_resume_edit_personal.ftl" />
                    <!--  教育背景  -->
                    <#include "div/div_resume_edit_education.ftl" />
                    <!--  获奖阶段  -->
                    <#include "div/div_resume_edit_awards.ftl" />
                    <!--  外语能力描述  -->
                    <#include "div/div_resume_edit_language.ftl" />
                    <!--  计算机能力描述  -->
                    <#include "div/div_resume_edit_computer.ftl" />
                    <!--  学生干部任职情况/学生工作  -->
                    <#include "div/div_resume_edit_student_works.ftl" />
                    <!--  培训经历  -->
                    <#include "div/div_resume_edit_train.ftl" />
                    <!--  实践经历  -->
                    <#include "div/div_resume_edit_practice.ftl" />
                    <!--  实习经历  -->
                    <#include "div/div_resume_edit_work.ftl" />
                    <!--  专业职业资格证书  -->
                    <#include "div/div_resume_edit_certificate.ftl" />
                    <!--  家庭背景与社会资源  -->
                    <#include "div/div_resume_edit_family.ftl" />
                    <!--  毕业论文及发表期刊  -->
                    <#include "div/div_resume_edit_dissertation.ftl" />
                    <!--  begin 职业规划  -->
                    <div class="col-md-12 col-sm-12 col-xs-12" id="workplan">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>职业规划 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">未来五年职业规划</label>
                                        <div class="col-md-11 col-sm-11 col-xs-12">
                                            <textarea required="required" class="form-control resume-data" id="plan" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                data-parsley-validation-threshold="10"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group" >
                                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                            <button type="submit" class="btn btn-primary btn-resume-save" data="workplan" >保存</button>
                                            <button class="btn btn-default btn-pre" >上一项</button>
                                            <button class="btn btn-default btn-next" >下一项</button>
                                        </div >
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 职业规划  -->
                    <!--  begin 自我评价  -->
                    <div class="col-md-12 col-sm-12 col-xs-12" id="selfjudge">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>自我评价 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">自我评价</label>
                                        <div class="col-md-11 col-sm-11 col-xs-12">
                                            <textarea required="required" class="form-control resume-data" id="info" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                data-parsley-validation-threshold="10"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group" >
                                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                            <button type="submit" class="btn btn-primary btn-resume-save" data="selfjudge" >保存</button>
                                            <button class="btn btn-default btn-pre" >上一项</button>
                                            <button class="btn btn-default btn-next" >下一项</button>
                                        </div >
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 自我评价  -->
                    <!--  begin 特长爱好  -->
                    <div class="col-md-12 col-sm-12 col-xs-12" id="speciality">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>特长爱好 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">特长爱好</label>
                                        <div class="col-md-11 col-sm-11 col-xs-12">
                                            <textarea required="required" class="form-control resume-data" id="info" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                data-parsley-validation-threshold="10"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group" >
                                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                            <button type="submit" class="btn btn-primary btn-resume-save" data="speciality" >保存</button>
                                            <button class="btn btn-default btn-pre" >上一项</button>
                                            <button class="btn btn-default btn-next" >下一项</button>
                                        </div >
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 特长爱好  -->
                    <!--  begin 自荐信  -->
                    <div class="col-md-12 col-sm-12 col-xs-12" id="selfrecomadation">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>自荐信 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">自荐信</label>
                                        <div class="col-md-11 col-sm-11 col-xs-12">
                                            <textarea required="required" class="form-control resume-data" id="info" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                data-parsley-validation-threshold="10"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group" >
                                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                            <button type="submit" class="btn btn-primary btn-resume-save" data="selfrecomadation" >保存</button>
                                            <button class="btn btn-default btn-pre" >上一项</button>
                                            <button class="btn btn-default btn-next" >下一项</button>
                                        </div >
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 自荐信  -->
                    <!--  begin 其他说明  -->
                    <div class="col-md-12 col-sm-12 col-xs-12" id="otherinfo">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>其他说明 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">其他说明</label>
                                        <div class="col-md-11 col-sm-11 col-xs-12">
                                            <textarea required="required" class="form-control resume-data" id="info" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                data-parsley-validation-threshold="10"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group" >
                                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                            <button type="submit" class="btn btn-primary btn-resume-save" data="otherinfo">保存</button>
                                            <button class="btn btn-default btn-pre" >上一项</button>
                                            <button class="btn btn-default btn-next" >下一项</button>
                                        </div >
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 其他说明  -->
                    <!--  begin 报考银行、薪资收入、报考地区  -->
                    <#include "div/div_resume_edit_targetbank.ftl" />
                    <!--  end 报考银行、薪资收入、报考地区  -->
                    <!--  begin 是否具有以下情况  -->
                    <#include "div/div_resume_edit_promise.ftl" />
                    <!--  end 是否具有以下情况  -->
                </div>
            </div>
        </div>
        <!-- /page content -->

        <#include "inc/inc_footer.ftl" />

    </div>
</div>

<#include "inc/inc_commonjs.ftl" />
<#include "inc/inc_datatablejs.ftl" />

<script src="${path}/vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
<script src="${path}/vendors/bootstrapvalidator/js/language/zh_CN.js"></script>
<script src="${path}/vendors/bootstrap-fileinput/js/fileinput.min.js"></script>
<script src="${path}/vendors/bootstrap-fileinput/js/locales/zh.js"></script>

<script src="${path}/js/resumeedit.js"></script>
<script>
    var manager = Object.create(ModuleManager);
    ajaxGetResumeTempInfo(initByResumeTemp);

    /**
     * @brief 根据简历模板配置信息初始化界面
     */
    function initByResumeTemp(tempInfo) {
        manager.init(tempInfo);
        manager.selectModule(0);

        $('.btn-pre').click(function(){
            manager.preModule();
        });

        $('.btn-next').click(function(){
            manager.nextModule();
        });

        ajaxGetResumeInfo(onGetResumeInfo);
    }

    /**
     * 获取简历信息回调,上数据
     */
    function onGetResumeInfo(data) {
        console.log('onGetResumeInfo>>data:');  //+ JSON.stringify(data)
        console.log(data);
        $.each(data,function(name,value) {
            //教育经历特殊对待
            if(name == 'education'){
                //基本信息
                fillFromData(name,'resume-edudata',value);
                //阶段信息
                var history = value['edu_history'];
                fillTabelData(name,'resume-table',history);
                return;
            }

            if($.isArray(value)){
                fillTabelData(name,'resume-table',value);
            } else{
                fillFromData(name,'resume-data',value);
            }
        });
    } 

    /**
     * @brief 获取简历模板配置信息
     */
    function ajaxGetResumeTempInfo(callback) {
        $.ajax({    
            type: "GET",
            url: "${path}/resumetmpl/resumetemplates-detail.json",
            cache:  false,
            data: { 'temp_id': ${temp_id}},
            dataType: "json",
            success: function (result)  {
                if (result.ok) {
                    callback(result.result);
                }            
            },
            error: function() {
                toastr.error('简历模板配置信息获取失败，请刷新重试！');
            } 
        });
    } 

    /**
     * @brief 获取简历信息
     */
    function ajaxGetResumeInfo(callback) {
        $.ajax({    
            type: "GET",
            url: "${path}/resume/resume-part-detail.json",
            cache:  false,
            data: { 'resume_id': '${resume_guid}'},
            dataType: "json",
            success: function (result)  {
                if (result.ok) {
                    callback(result.result);
                }            
            },
            error: function() {
                toastr.error('简历信息获取失败，请刷新重试！');
            } 
        });
    }

    /**
     * @brief 保存简历
     */
    function ajaxSaveResumePart(section,value) {
        var param = {
            "resume_id"		: '${resume_guid}',
            "section_name"	: section,
            "value"		: value
        };

        $.ajax({    
            type: "POST",
            url: "${path}/resume/resume-part-save.json",
            contentType: "application/json",
            cache:  false,
            data: JSON.stringify(param),
            dataType: "json",
            success: function (result)  {
                if (result.ok) {
                    toastr.success('信息保存成功！');
                } else {
                    toastr.error('信息保存失败，' + result.errorinfo);
                }           
            },
            error: function() {
                toastr.error('信息保存失败，请稍后重试！');
            } 
        });    
    }

    //所有非表格模块保存按钮事件
    $('.btn-resume-save').click(function(){
        var moduleid = $(this).attr('data');
        //触发验证
        var $eleForm = $('#form_' + moduleid);
        if($eleForm.length > 0){
            $eleForm.data("bootstrapValidator").validate();
            var flag = $eleForm.data("bootstrapValidator").isValid();
            if(!flag){
                return;  
            }
        }

        var value = formatFromData(moduleid, 'resume-data',false);
        ajaxSaveResumePart(moduleid ,value);
    });
 
    //初始化所有时间选择控件
    function initDateRangePickers() {
        //初始化日期选择框
        var daterangepicker_options = {};
        daterangepicker_options.singleDatePicker = true;
        daterangepicker_options.calender_style = "picker_4";
        daterangepicker_options.showDropdowns = true; //允许年份和月份通过下拉框的形式选择
        daterangepicker_options.startDate = moment();
        daterangepicker_options.locale = {
            //direction: 'rtl',
            format: 'YYYY-MM-DD',
            separator: ' - ',
            daysOfWeek: ['日', '一', '二', '三', '四', '五', '六'],
            monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
            firstDay: 1
        };

        $('.resume-data-picker').daterangepicker(daterangepicker_options, function(start, end, label) {
        });
    }

    function initFileInput() {
        $(".resume-input-picture").fileinput({
            language : 'zh',
            uploadAsync: true,
            uploadUrl: "${path}/file/common-upload.json", //上传的地址
            allowedFileExtensions : ['jpg', 'png'],//接收的文件后缀,
            maxFileCount: 1,
            dropZoneEnabled: false,
            showUpload: false,
            enctype: 'multipart/form-data',
            layoutTemplates: {
                actionUpload:''
            }
        });
    }

    //初始化所有的table
    function initDataTables(classname,subclassname) {
        var tables = $('body').find('.' + classname);
        for(var i = 0; i < tables.length; ++i){
            initDataTable($(tables[i]), classname,subclassname);
        }
    }

    function initDataTable($table,classname,subclassname) {
        var operate = {
            "data": null,
            "className": "center",
            "defaultContent": '<a class="table-menu-edit" href="#"><i class="fa fa-trash-o"></i>修改</a>&nbsp;&nbsp;<a class="table-menu-del" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
        };
        var columns = [];

        var moduleid = $table.attr('data');
        var elems = $('#' + moduleid).find('.' + subclassname);
        for(var j = 0;j < elems.length; ++j){
            var $elem = $(elems[j]);
            var column = {"data" : ""};
            column.data = $elem.attr('id');
            columns.push(column);
        }
        columns.push(operate);
        console.log('initDataTable>>module:' + moduleid + ';columes:' + JSON.stringify(columns));
        console.log(columns);

        if(classname == 'resume-mintable'){
            $table.DataTable({
                bFilter: false,         //去掉搜索框
                bLengthChange: false,   //去掉每页显示多少条数据
                'columns': columns
            });
        }else{
            $table.DataTable({
                'columns': columns
            });
        }

        bingDataTableMenuEvent($table,classname,subclassname);
    }

    function bingDataTableMenuEvent($table,classname,subclassname) {
        //修改Item事件
        $table.on( 'click', 'a.table-menu-edit', function (even)  {
            var thetable = $(this).parents('table.' + classname);
            var row = thetable.DataTable().row($(this).parents('tr'));
            var data = row.data();

            var moduleid = thetable.attr('data');
            fillFromData(moduleid, subclassname, data);

            //教育经历特殊处理
            if(moduleid == 'education'){
                var scores = $.parseJSON($('#scores').val());   
                fillTabelData('educationscores','resume-mintable',scores);
            }

            row.remove().draw(false); 
        });

        //删除Item事件
        $table.on( 'click', 'a.table-menu-del', function (even)  {
            var thetable = $(this).parents('table.' + classname).DataTable();
            thetable.row($(this).parents('tr')).remove().draw(false);
        }); 
    }

    //所有表格新增按钮事件
    $('.btn-resume-additem').click(function(){
        var moduleid = $(this).attr('data');
        var $table = $('#' + moduleid).find('table.resume-table').DataTable();
        var value = formatFromData(moduleid,'resume-data',true);
        $table.row.add(value).draw(false);
    });

    //新增学科按钮事件
    $('#btn-addscores').click(function(){
        //触发验证
        $('#form_educationscores').data("bootstrapValidator").validate();
        var flag = $('#form_educationscores').data("bootstrapValidator").isValid();
        if(!flag){
            return;  
        }

        var moduleid = $(this).attr('data');
        var $table = $('#' + moduleid).find('table.resume-mintable').DataTable();
        var value = formatFromData(moduleid,'resume-mindata',true);
        $table.row.add(value).draw(false);
    });

    //新增教育经历按钮事件
    $('#btn-addeducation').click(function(){
        //触发验证
        $('#form_educationhistory').data("bootstrapValidator").validate();
        var flag = $('#form_educationhistory').data("bootstrapValidator").isValid();
        if(!flag){
            return;  
        }

        //获取学科及成绩
        var scoresValue = formatTabelData('educationscores','resume-mintable',true);
        $('#scores').val(JSON.stringify(scoresValue));

        var $table = $('#education').find('table.resume-table').DataTable();
        var value = formatFromData('education','resume-data',true);
        $table.row.add(value).draw(false);
    });

    //所有表格保存按钮事件
    $('.btn-resume-savetable').click(function(){
        var moduleid = $(this).attr('data');
        //触发验证
        var $eleForm = $('#form_' + moduleid);
        if($eleForm.length > 0){
            $eleForm.data("bootstrapValidator").validate();
            var flag = $eleForm.data("bootstrapValidator").isValid();
            if(!flag){
                return;  
            }
        }

        var value = formatTabelData(moduleid,'resume-table',false);
        console.log('savetable>>moduleid:' + moduleid +';value:' + JSON.stringify(value));
        ajaxSaveResumePart(moduleid ,value);
    });

    //教育经历保存按钮事件
    $('#btn-saveeducation').click(function(){
        //触发验证
        $('#form_education').data("bootstrapValidator").validate();
        var flag = $('#form_education').data("bootstrapValidator").isValid();
        if(!flag){
            return;  
        }

        var moduleid = $(this).attr('data');
        //基本信息
        var value = formatFromData(moduleid,'resume-edudata',false);
        //阶段信息
        value['edu_history'] = formatTabelData(moduleid,'resume-table',false);

        console.log('savetable>>moduleid:' + moduleid +';value:' + JSON.stringify(value));
        ajaxSaveResumePart(moduleid ,value);
    });

    //个人信息图片上传事件
    $("#head_pic_fileinput").on("fileuploaded", function(event, data, previewId, index) {
        if(data.response.ok){
            $("#head_pic").val(data.response.result);
        }else{
            //toastr.error(data.response.errorinfo);
        }

        var $elem = $("#live_pic_fileinput");
        var data = $elem.val();
        if (data) {
            $elem.fileinput("upload");
            return;
        }

        $elem = $("#student_pic_fileinput");
        data = $elem.val();
        if (data) {
            $elem.fileinput("upload");
            return;
        }

        var value = formatFromData('baseinfo', 'resume-data',false);
        ajaxSaveResumePart('baseinfo' ,value);
    });

    $("#live_pic_fileinput").on("fileuploaded", function(event, data, previewId, index) {
        if(data.response.ok){
            $("#live_pic").val(data.response.result);
        }else{
            //toastr.error(data.response.errorinfo);
        }

        var $elem = $("#student_pic_fileinput");
        var data = $elem.val();
        if (data) {
            $elem.fileinput("upload");
            return;
        }

        var value = formatFromData('baseinfo', 'resume-data',false);
        ajaxSaveResumePart('baseinfo' ,value);
    });

    $("#student_pic_fileinput").on("fileuploaded", function(event, data, previewId, index) {
        if(data.response.ok){
            $("#student_pic").val(data.response.result);
        }else{
            //toastr.error(data.response.errorinfo);
        }

        var value = formatFromData('baseinfo', 'resume-data',false);
        ajaxSaveResumePart('baseinfo' ,value);
    });

    //个人信息保存按钮事件
    $("#btn-savepersonal").click(function(){
        //触发验证
        $('#form_baseinfo').data("bootstrapValidator").validate();
        var flag = $('#form_baseinfo').data("bootstrapValidator").isValid();
        if(!flag){
            return;  
        }

        var $elem = $("#head_pic_fileinput");
        var data = $elem.val();
        if (data) {
            $elem.fileinput("upload");
            return;
        }

        $elem = $("#live_pic_fileinput");
        data = $elem.val();
        if (data) {
            $elem.fileinput("upload");
            return;
        }

        $elem = $("#student_pic_fileinput");
        data = $elem.val();
        if (data) {
            $elem.fileinput("upload");
            return;
        }

        var value = formatFromData('baseinfo', 'resume-data',false);
        ajaxSaveResumePart('baseinfo' ,value);
    });

    /**
     * @brief 格式化表单数据 
     *
     * 遍历某控件下指定类的输入控件，根据id生成json数据
     *
     * @param pid {string}        包含表单的控件id
     * @param subclass {string}   表单各项数据控件类名称
     * @param clear {boolean}     是否清空控件内数据
     *
     * @return value {object}  json数据
     */
    function formatFromData(pid, subclass, clear){
        var elems = $('#' + pid).find('.' + subclass);
        var value = {};
        for(var i = 0;i < elems.length; ++i){
            var $elem = $(elems[i]);
            value[$elem.attr('id')] = $elem.val(); 
            if(clear){
                $elem.val(""); 
            }
        }
        console.log('formatFromData>>moduleid:' + pid +';value:' + JSON.stringify(value));
        return value;
    }

    /**
     * @brief 填充表单数据
     *
     * 根据json数据，遍历某控件下的指定类的输入控件，进行赋值 
     *
     * @param pid {string}      包含表单的控件id
     * @param subclass {string} 表单各项数据控件类名称
     * @param value {object}    表单数据
     */
    function fillFromData(pid, subclass, value){
        var elems = $('#' + pid).find('.' + subclass);
        for(var i = 0;i < elems.length; ++i){
            var $elem = $(elems[i]);
            $elem.val(value[$elem.attr('id')]);
        }
    }

    /**
     * @brief 格式化表格数据
     *
     * 查找某控件内的指定类表格控件，根据表格内容生成json数据 
     * 
     * @param pid {string}        包含表单的控件id
     * @param subclass {string}   表单各项数据控件类名称
     * @param clear {boolean}     是否清空控件内数据
     * 
     * @return value {array}   json数组
     */
    function formatTabelData(pid, subclass,clear){
        var $table = $('#' + pid).find('table.' + subclass).DataTable();
        var value = [];
        var dataRows = $table.page.info().recordsTotal;
        for (var i = 0; i < dataRows; ++i) {
            value.push($table.row(i).data());
        }

        //清空表格数据
        if(clear) {
            for (var k = 0; k < dataRows; ++k) {
                $table.row(0).remove().draw(false);
            }
        }
        return value;
    }

    /**
     * @brief 填充表格数据
     *
     * 根据json数据，查找某控件内的指定类表格控件，填充数据  
     *
     * @param pid {string}      包含表格的控件id
     * @param subclass {string} 表格类名称
     * @param value {array}     表格数据
     */
    function fillTabelData(pid, subclass, value){
        var $table = $('#' + pid).find('table.' + subclass).DataTable();
        for(var i = 0;i < value.length; ++i){
            $table.row.add(value[i]).draw(false);
        }
    }


    $(document).ready(function() {
        initDateRangePickers();
        initFileInput();
        initDataTables('resume-table','resume-data');
        initDataTables('resume-mintable','resume-mindata');
        initValidator();
    });


    function initValidator(){
        $('#form_baseinfo').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                height_cm: {
                    validators: {
                        digits: {
                            message: '该值只能包含数字。'
                        }
                    }
                },
                weight_kg: {
                    validators: {
                        digits: {
                            message: '该值只能包含数字。'
                        }
                    }
                }
            }
        });

        $('#form_education').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                gaokao_point: {
                    validators: {
                        digits: {
                            message: '该值只能包含数字。'
                        }
                    }
                }
            }
        });

        $('#form_educationscores').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                score: {
                    validators: {
                        regexp: {
                            regexp: /^1?[1-9]?\d([.]\d)?$/,
                            message: '得分不合法'
                        }
                    }
                }
            }
        });

        $('#form_educationhistory').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                graduate_pos: {
                    validators: {
                        digits: {
                            message: '该值只能包含数字。'
                        }
                    }
                }
            }
        });
        
        $('#form_rewards').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                times: {
                    validators: {
                        digits: {
                            message: '该值只能包含数字。'
                        }
                    }
                }
            }
        });

        $('#form_language').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                score: {
                    validators: {
                        regexp: {
                            regexp: /^1?[1-9]?\d([.]\d)?$/,
                            message: '得分不合法'
                        }
                    }
                }
            }
        });

        $('#form_shixi').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                salary: {
                    validators: {
                        regexp: {
                            regexp: /(^[1-9]([0-9]+)?(\.[0-9]{1,2})?$)|(^(0){1}$)|(^[0-9]\.[0-9]([0-9])?$)/,
                            message: '金额不合法'
                        }
                    }
                }
            }
        });

        $('#form_targetbank').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                expect_salary: {
                    validators: {
                        regexp: {
                            regexp: /(^[1-9]([0-9]+)?(\.[0-9]{1,2})?$)|(^(0){1}$)|(^[0-9]\.[0-9]([0-9])?$)/,
                            message: '金额不合法'
                        }
                    }
                }
            }
        });
    }
  
</script>

</body>
</html>
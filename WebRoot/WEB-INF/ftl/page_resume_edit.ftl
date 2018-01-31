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
            //两个特殊对待
            if(name == 'baseinfo'){
                return;
            }

            if(name == 'education'){
                return;
            }

            if($.isArray(value)){
                var $table = $('#' + name).find('table').DataTable();
                for(var i = 0;i < value.length; ++i){
                    $table.row.add(value[i]).draw(false);
                }
            } else{
                var elems = $('#' + name).find('.resume-data');
                for(var i = 0;i < elems.length; ++i){
                    var $elem = $(elems[i]);
                    $elem.val(value[$elem.attr('id')]);
                }
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
        var elems = $('#' + moduleid).find('.resume-data');
        var value = {};
        for(var i = 0;i < elems.length; ++i){
            var $elem = $(elems[i]);
            value[$elem.attr('id')] = $elem.val();  
        }
        console.log('save data>>moduleid:' + moduleid +';value:' + JSON.stringify(value));
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

    //初始化所有的table
    function initDataTables() {
        var tables = $('body').find('.resume-table');
        for(var i = 0; i < tables.length; ++i){
            initDataTable($(tables[i]));
        }
    }

    function initDataTable($table) {
        var operate = {
            "data": null,
            "className": "center",
            "defaultContent": '<a class="table-menu-edit" href="#"><i class="fa fa-trash-o"></i>修改</a>&nbsp;&nbsp;<a class="table-menu-del" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
        };
        var columns = [];

        var moduleid = $table.attr('data');
        var elems = $('#' + moduleid).find('.resume-data');
        for(var j = 0;j < elems.length; ++j){
            var $elem = $(elems[j]);
            var column = {"data" : ""};
            column.data = $elem.attr('id');
            columns.push(column);
        }
        columns.push(operate);
        console.log('initDataTable>>module:' + moduleid + ';columes:' + JSON.stringify(columns));
        console.log(columns);
        $table.DataTable({
            'columns': columns
        });

        bingDataTableMenuEvent($table);
    }

    function bingDataTableMenuEvent($table) {
        //修改Item事件
        $table.on( 'click', 'a.table-menu-edit', function (even)  {
            var thetable = $(this).parents('table');
            var row = thetable.DataTable().row($(this).parents('tr'));
            var data = row.data();

            var moduleid = thetable.attr('data');
            var elems = $('#' + moduleid).find('.resume-data');
            for(var k = 0;k < elems.length; ++k){
                var $elem = $(elems[k]);
                $elem.val(data[$elem.attr('id')]);
            }

            row.remove().draw(false); 
        });

        //删除Item事件
        $table.on( 'click', 'a.table-menu-del', function (even)  {
            var thetable = $(this).parents('table').DataTable();
            thetable.row($(this).parents('tr')).remove().draw(false);
        }); 
    }

    //所有表格新增按钮事件
    $('.btn-resume-additem').click(function(){
        var moduleid = $(this).attr('data');
        var $table = $('#' + moduleid).find('table').DataTable();
        var elems = $('#' + moduleid).find('.resume-data');
        var value = {};
        for(var i = 0;i < elems.length; ++i){
            var $elem = $(elems[i]);
            value[$elem.attr('id')] = $elem.val();  
            $elem.val("");
        }
        console.log('additem>>moduleid:' + moduleid +';value:' + JSON.stringify(value));
        $table.row.add(value).draw(false);
    });

    //所有表格保存按钮事件
    $('.btn-resume-savetable').click(function(){
        var moduleid = $(this).attr('data');
        var $table = $('#' + moduleid).find('table').DataTable();
        var value = [];
        var dataRows = $table.page.info().recordsTotal;
        for (var i = 0; i < dataRows; ++i) {
            value.push($table.row(i).data());
        }
        console.log('savetable>>moduleid:' + moduleid +';value:' + JSON.stringify(value));
        ajaxSaveResumePart(moduleid ,value);
    });

    $(document).ready(function() {
        initDateRangePickers();
        initDataTables();

        <#--  initBaseinfoUI();
        initBaseinfoValidator();
        initAwardsUI();
        initAwardsValidator();
        initLanguageUI();
        initComputerUI();
        initStudentUI();
        initTrainUI();
        initPracticeUI();
        initWorkUI();
        initCertificateUI();
        initFamily();
        initDissertationUI();   -->
    });

    function initBaseinfoUI() {
        //时间选择控件
        $('#input_birthday').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        $('#input_political_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        $('#input_graduation_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        $('#input_work_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        $("#input-picture").fileinput({language : 'zh'});
        $("#input-picture-normal").fileinput({language : 'zh'});
        $("#input-picture-student").fileinput({language : 'zh'});
    }

    function initBaseinfoValidator(){
        $('#form_edit_baseinfo').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                name: {
                    validators: {
                        notEmpty: {
                            message: '请输入姓名'
                        }
                    }
                },
                stature: {
                    validators: {
                        notEmpty: {
                            message: '请输入身高'
                        }
                    }
                },
                weight: {
                    validators: {
                        notEmpty: {
                            message: '请输入体重'
                        }
                    }
                }
            }
        });
    }

    function initAwardsUI(){
        //时间选择控件
        $('#input_awards_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        //table test
        var $m_ui_table_awards = $("#table_awards");  
        var m_table_awards_columns = [ { 
                "data": "name"
            },        {    
                "data": "level"
            },        {    
                "data": "unit"
            },        {  
                "data": "count"
            },        {  
                "data": "time"
            },        {  
                "data":  null,
                "className":   "center",
                "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>修改</a>&nbsp;&nbsp;<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
            }];
        var m_sourceSelectAwards = new Array(); 
        
        var subAwardsItem = {
            name: '1',
            level: '中国银行',
            unit: '中国银行',
            count: '中国银行',
            time: '中国银行',
        };
        m_sourceSelectAwards.push(subAwardsItem);

        $m_ui_table_awards.DataTable({
            'bAutoWidth': true,
            'destroy': true, //可重新加载
            'data': m_sourceSelectAwards,
            'columns': m_table_awards_columns
        });

        $m_ui_table_awards.removeAttr("style");
    }

    /**
     * 初始化获奖阶段新增form的输入验证器
     */
    function initAwardsValidator() {
        $('#form_edit_awards').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                name: {
                    validators: {
                        notEmpty: {
                            message: '请输入获奖名称'
                        }
                    }
                },
                unit: {
                    validators: {
                        notEmpty: {
                            message: '请输入获奖单位'
                        }
                    }
                },
                count: {
                    validators: {
                        notEmpty: {
                            message: '请输入获奖次数'
                        }
                    }
                }
            }
        });
    }

    function initLanguageUI(){
        //时间选择控件
        $('#language-date').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });
    }

    function initComputerUI(){
        //时间选择控件
        $('#computer-date').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });
    }

    function initStudentUI() {
        //时间选择控件
        $('#input_studentworks_begin_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        $('#input_studentworks_end_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });
        
        //table test
        var $m_ui_table = $("#table_student_works");  
        var m_table_columns = [ { 
                "data": "begintime"
            },        {    
                "data": "endtime"
            },        {    
                "data": "name"
            },        {  
                "data": "type"
            },        {  
                "data": "describe"
            },        {  
                "data":  null,
                "className":   "center",
                "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>修改</a>&nbsp;&nbsp;<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
            }];
        var m_source = new Array(); 
        
        var subItem = {
            begintime: '2017-01-01',
            endtime: '2017-11-01',
            name: '中国银行',
            type: '中国银行',
            describe: '中国银行',
        };
        m_source.push(subItem);

        $m_ui_table.DataTable({
            'bAutoWidth': true,
            'destroy': true, //可重新加载
            'data': m_source,
            'columns': m_table_columns
        });

        $m_ui_table.removeAttr("style");
    }

    function initTrainUI() {
        //时间选择控件
        $('#trainning-start_date').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        $('#trainning-end_date').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        $("#table_trainning").DataTable({
            'columns': [ { 
                "data": "trainning-start_date"
            },        {    
                "data": "trainning-end_date"
            },        {    
                "data": "trainning-name"
            },        {    
                "data": "trainning-memo"
            },        {  
                "data":  null,
                "className":   "center",
                "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>修改</a>&nbsp;&nbsp;<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
            }]
        });
    }

    function initPracticeUI() {
        //时间选择控件
        $('#input_practice_begin_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        $('#input_practice_end_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });
        
        //table test
        var $m_ui_table = $("#table_practice");  
        var m_table_columns = [ { 
                "data": "begintime"
            },        {    
                "data": "endtime"
            },        {    
                "data": "name"
            },        {  
                "data": "describe"
            },        {  
                "data":  null,
                "className":   "center",
                "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>修改</a>&nbsp;&nbsp;<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
            }];
        var m_source = new Array(); 
        
        var subItem = {
            begintime: '2017-01-01',
            endtime: '2017-11-01',
            name: '中国银行',
            describe: '中国银行',
        };
        m_source.push(subItem);

        $m_ui_table.DataTable({
            'bAutoWidth': true,
            'destroy': true, //可重新加载
            'data': m_source,
            'columns': m_table_columns
        });

        $m_ui_table.removeAttr("style");
    }
    
    function initWorkUI() {
        //时间选择控件
        $('#input_work_begin_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        $('#input_work_end_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });
        
        //table test
        var $m_ui_table = $("#table_work");  
        var m_table_columns = [ { 
                "data": "begintime"
            },        {    
                "data": "endtime"
            },        {    
                "data": "industry"
            },        {  
                "data": "unit"
            },        {  
                "data": "post"
            },        {  
                "data": "unittype"
            },        {  
                "data": "worktype"
            },        {  
                "data": "worklevel"
            },        {  
                "data": "pay"
            },        {  
                "data": "reterence"
            },        {  
                "data": "reterencetype"
            },        {  
                "data": "reterencetel"
            },        {  
                "data":  null,
                "className":   "center",
                "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>修改</a>&nbsp;&nbsp;<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
            }];
        var m_source = new Array(); 
        
        var subItem = {
            begintime: '2017-01-01',
            endtime: '2017-11-01',
            industry: '中国银行',
            unit: '中国银行',
            post: '中国银行',
            unittype: '中国银行',
            worktype: '中国银行',
            worklevel: '中国银行',
            pay: '中国银行',
            reterence: '中国银行',
            reterencetype: '中国银行',
            reterencetel: '中国银行',
        };
        m_source.push(subItem);

        $m_ui_table.DataTable({
            'bAutoWidth': true,
            'destroy': true, //可重新加载
            'data': m_source,
            'columns': m_table_columns
        });

        $m_ui_table.removeAttr("style");
    }

    function initCertificateUI() {
        //时间选择控件
        $('#input_certificate_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        //table test
        var $m_ui_table = $("#table_certificate");  
        var m_table_columns = [ { 
                "data": "type"
            },        {    
                "data": "name"
            },        {    
                "data": "year"
            },        {  
                "data": "unit"
            },        {  
                "data": "time"
            },        {  
                "data": "id"
            },        {  
                "data":  null,
                "className":   "center",
                "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>修改</a>&nbsp;&nbsp;<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
            }];
        var m_source = new Array(); 
        
        var subItem = {
            type: '2017-01-01',
            name: '2017-11-01',
            year: '中国银行',
            unit: '中国银行',
            time: '中国银行',
            id: '中国银行',
        };
        m_source.push(subItem);

        $m_ui_table.DataTable({
            'bAutoWidth': true,
            'destroy': true, //可重新加载
            'data': m_source,
            'columns': m_table_columns
        });

        $m_ui_table.removeAttr("style");
    }

    function initFamily() {
        //时间选择控件
        $('#input_family_birthday_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        //table test
        var $m_ui_table = $("#table_family");  
        var m_table_columns = [ { 
                "data": "name"
            },        {    
                "data": "sex"
            },        {    
                "data": "type"
            },        {  
                "data": "birthday"
            },        {  
                "data": "status"
            },        {  
                "data": "unit"
            },        {  
                "data": "post"
            },        {  
                "data": "politics"
            },        {  
                "data": "education"
            },        {  
                "data":  null,
                "className":   "center",
                "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>修改</a>&nbsp;&nbsp;<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
            }];
        var m_source = new Array(); 
        
        var subItem = {
            name: '2017-01-01',
            sex: '2017-11-01',
            type: '中国银行',
            birthday: '中国银行',
            status: '中国银行',
            unit: '中国银行',
            post: '中国银行',
            politics: '中国银行',
            education: '中国银行',
        };
        m_source.push(subItem);

        $m_ui_table.DataTable({
            'bAutoWidth': true,
            'destroy': true, //可重新加载
            'data': m_source,
            'columns': m_table_columns
        });

        $m_ui_table.removeAttr("style");
    }

    function initDissertationUI() {
        //时间选择控件
        $('#input_dissertation_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        //table test
        var $m_ui_table = $("#table_dissertation");  
        var m_table_columns = [ { 
                "data": "name"
            },        {    
                "data": "type"
            },        {    
                "data": "time"
            },        {  
                "data": "author"
            },        {  
                "data": "level"
            },        {  
                "data":  null,
                "className":   "center",
                "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>修改</a>&nbsp;&nbsp;<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
            }];
        var m_source = new Array(); 
        
        var subItem = {
            name: '2017-01-01',
            type: '2017-11-01',
            time: '中国银行',
            author: '中国银行',
            level: '中国银行',
        };
        m_source.push(subItem);

        $m_ui_table.DataTable({
            'bAutoWidth': true,
            'destroy': true, //可重新加载
            'data': m_source,
            'columns': m_table_columns
        });

        $m_ui_table.removeAttr("style");
    }
</script>

</body>
</html>
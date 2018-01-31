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
                                <ul class="nav navbar-right panel_toolbox">
                                    <li>
                                        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a></li>
                                            <li><a href="#">Settings 2</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_occupational_plan">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">未来五年职业规划</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                                <button class="btn btn-default btn-pre" >上一项</button>
                                                <button class="btn btn-default btn-next" >下一项</button>
                                            </div >
                                        </div>
                                    </form>
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
                                <ul class="nav navbar-right panel_toolbox">
                                    <li>
                                        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a></li>
                                            <li><a href="#">Settings 2</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_self_evaluation">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">自我评价</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                                <button class="btn btn-default btn-pre" >上一项</button>
                                                <button class="btn btn-default btn-next" >下一项</button>
                                            </div >
                                        </div>
                                    </form>
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
                                <ul class="nav navbar-right panel_toolbox">
                                    <li>
                                        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a></li>
                                            <li><a href="#">Settings 2</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_hobby">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">特长爱好</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                                <button class="btn btn-default btn-pre" >上一项</button>
                                                <button class="btn btn-default btn-next" >下一项</button>
                                            </div >
                                        </div>
                                    </form>
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
                                <ul class="nav navbar-right panel_toolbox">
                                    <li>
                                        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a></li>
                                            <li><a href="#">Settings 2</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_letter">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">自荐信</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                                <button class="btn btn-default btn-pre" >上一项</button>
                                                <button class="btn btn-default btn-next" >下一项</button>
                                            </div >
                                        </div>
                                    </form>
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
                                <ul class="nav navbar-right panel_toolbox">
                                    <li>
                                        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a></li>
                                            <li><a href="#">Settings 2</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_other">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">其他说明</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                                <button class="btn btn-default btn-pre" >上一项</button>
                                                <button class="btn btn-default btn-next" >下一项</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 其他说明  -->
                    <!--  begin 报考银行、薪资收入、报考地区  -->
                    <!--  end 报考银行、薪资收入、报考地区  -->
                    <!--  begin 是否具有以下情况  -->
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

    var manager = Object.create(ModuleManager);
    //通过模板id，获取配置详情，并初始化界面
    $.ajax({    
        type: "GET",
        url: "${path}/resumetmpl/resumetemplates-detail.json",
        cache:  false,
        data: { 'temp_id': 2 },
        <#--  data: { 'temp_id': ${RequestParameters['temp_id']} },  -->
        dataType: "json",
        success: function (result)  {
            if (result.ok) {
                manager.init(result.result);
                manager.selectModule(0);

                $('.btn-pre').click(function(){
                    manager.preModule();
                });

                $('.btn-next').click(function(){
                    manager.nextModule();
                });
            }            
        },
        error: function() {
            toastr.error('简历模板配置信息获取失败，请刷新重试！');
        } 
    });

    

    $(document).ready(function() {
        


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
        initDissertationUI();  -->
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
        $('#input_english_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });
    }

    function initComputerUI(){
        //时间选择控件
        $('#input_computer_time').daterangepicker(daterangepicker_options, function(start, end, label) {
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
        $('#input_train_begin_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });

        $('#input_train_end_time').daterangepicker(daterangepicker_options, function(start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
        });
        
        //table test
        var $m_ui_table = $("#table_train");  
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
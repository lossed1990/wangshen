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
        <#include "inc/inc_leftmenu_resume_edit.ftl" />

        <#include "inc/inc_toprightnav.ftl" />

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="row">
                    <!--  begin 个人基本信息  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>个人基本信息 <small>  </small></h2>
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
                                    <form id="form_edit_baseinfo">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">姓名</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="name" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">曾用名</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="oldname" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">性别</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="sex" class="form-control">
                                                    <option>男</option>
                                                    <option>女</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">出生年月</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="birthday" id="input_birthday" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">民族</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="nation" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">籍贯</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="nativeplace" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">政治面貌</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="political" class="form-control">
                                                    <option>中共党员</option>
                                                    <option>中共预备党员</option>
                                                    <option>团员</option>
                                                    <option>群众</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">入党团时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="politicaltime" id="input_political_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">身高(cm)</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="stature" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">体重(kg)</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="weight" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">血型</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="bloodtype" class="form-control">
                                                    <option>A</option>
                                                    <option>B</option>
                                                    <option>AB</option>
                                                    <option>O</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">婚姻状况</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="maritalstatus" class="form-control">
                                                    <option>未婚</option>
                                                    <option>已婚</option>
                                                    <option>离异</option>
                                                    <option>其他</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">生育状况</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="reproductivestatus" class="form-control">
                                                    <option>未育</option>
                                                    <option>已育</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">健康状况</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="health" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">生源地</label>
                                            <div class="col-md-7 col-sm-11 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">现居住地</label>
                                            <div class="col-md-7 col-sm-11 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">通讯地址</label>
                                            <div class="col-md-7 col-sm-11 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">户口所在地</label>
                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">户口类别</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="reproductivestatus" class="form-control">
                                                    <option>学校集体</option>
                                                    <option>单位集体</option>
                                                    <option>城镇居民户口</option>
                                                    <option>农业户口</option>
                                                    <option>境外居民</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">毕业时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="graduationtime" id="input_graduation_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">参加工作时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="worktime" id="input_work_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">证件类型</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="" class="form-control">
                                                    <option>身份证</option>
                                                    <option>护照</option>
                                                    <option>军人证</option>
                                                    <option>港澳身份证</option>
                                                    <option>其他</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">证件号</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">移动电话</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">固定电话</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">E-mail</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">邮编</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">紧急联系人</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">联系人电话</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">免冠一寸照</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input id="input-picture" type="file" data-preview-file-type="text" >
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">近期生活照</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input id="input-picture-normal" type="file" data-preview-file-type="text" >
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">学生证照片</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input id="input-picture-student" type="file" data-preview-file-type="text" >
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 个人基本信息  -->
                    <!--  begin 教育背景  -->
                    <div class="col-md-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>教育背景 <small>  </small></h2>
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
                                <div class="row">
                                    <!-- begin content --> 
                                    <div class="col-md-55">
                                        <div class="thumbnail">
                                            <div class="image view view-first">
                                                <img style="width: 100%; display: block;" src="${path}/image/media.jpg" alt="image" />
                                                <div class="mask">
                                                    <p>新建简历</p>
                                                    <div class="tools tools-bottom">
                                                        <a href="#"><i class="fa fa-pencil"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="caption">
                                                <p>中国银行</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end content --> 
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--  end 教育背景  -->
                    <!--  begin 获奖阶段  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>获奖阶段 <small>  </small></h2>
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
                                
                                <table id="table_awards" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>获奖名称</th>
                                            <th>获奖级别</th>
                                            <th>颁发单位</th>
                                            <th>获奖次数</th>
                                            <th>获奖时间</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>

                                <!-- begin edit --> 
                                <div class = "ln_solid" >
                                    </div>
                                <h2>新增 <small>  </small></h2>
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_awards">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">获奖名称</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="name" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">获奖级别</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="level" class="form-control">
                                                    <option>国家级</option>
                                                    <option>省级</option>
                                                    <option>市级</option>
                                                    <option>校级</option>
                                                    <option>院、系级</option>
                                                    <option>班级</option>
                                                    <option>个人</option>
                                                    <option>集体</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">颁发单位</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="unit" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">获奖次数</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="count" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">获奖时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="time" id="input_awards_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 获奖阶段  -->
                    <!--  begin 外语能力描述  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>英语能力描述 <small>  </small></h2>
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
                                    <form id="form_edit_language">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">证书级别</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="level" class="form-control">
                                                    <option>专业4级</option>
                                                    <option>专业8级</option>
                                                    <option>英语4级</option>
                                                    <option>专业6级</option>
                                                    <option>其他</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">具体成绩</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">获证日期</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" id="input_english_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">其他外语掌握情况</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">方言掌握情况</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">其他说明</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 外语能力描述  -->
                    <!--  begin 计算机能力描述  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>计算机能力描述 <small>  </small></h2>
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
                                    <form id="form_edit_computer">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">证书名称</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">获取时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" id="input_computer_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">掌握程度</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="level" class="form-control">
                                                    <option>精通</option>
                                                    <option>熟练</option>
                                                    <option>一般</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 计算机能力描述  -->
                    <!--  begin 学生干部任职情况/学生工作  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>学生干部任职情况/学生工作 <small>  </small></h2>
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
                                
                                <table id="table_student_works" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>开始时间</th>
                                            <th>结束时间</th>
                                            <th>职务名称</th>
                                            <th>职位类别</th>
                                            <th>工作业绩</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>

                                <!-- begin edit --> 
                                <div class = "ln_solid" >
                                    </div>
                                <h2>新增 <small>  </small></h2>
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_student_works">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">开始时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="begintime" id="input_studentworks_begin_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">结束时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="endtime" id="input_studentworks_end_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">职务名称</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="name" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">职务类别</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="type" class="form-control">
                                                    <option>学生会干部</option>
                                                    <option>党团干部</option>
                                                    <option>其他</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">工作业绩</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 学生干部任职情况/学生工作  -->
                    <!--  begin 培训经历  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>培训经历 <small>  </small></h2>
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
                                
                                <table id="table_train" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>开始时间</th>
                                            <th>结束时间</th>
                                            <th>培训项目名称</th>
                                            <th>内容描述</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>

                                <!-- begin edit --> 
                                <div class = "ln_solid" >
                                    </div>
                                <h2>新增 <small>  </small></h2>
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_train">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">开始时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="begintime" id="input_train_begin_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">结束时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="endtime" id="input_train_end_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">培训项目名称</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="name" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">内容描述</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 培训经历  -->
                    <!--  begin 实践经历  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>实践经历 <small>  </small></h2>
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
                                
                                <table id="table_practice" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>开始时间</th>
                                            <th>结束时间</th>
                                            <th>项目名称</th>
                                            <th>内容描述</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>

                                <!-- begin edit --> 
                                <div class = "ln_solid" >
                                    </div>
                                <h2>新增 <small>  </small></h2>
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_practice">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">开始时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="begintime" id="input_practice_begin_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">结束时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="endtime" id="input_practice_end_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">项目名称</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="name" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">内容描述</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 实践经历  -->
                    <!--  begin 实习经历  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>实习经历 <small>  </small></h2>
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
                                
                                <table id="table_work" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>开始时间</th>
                                            <th>结束时间</th>
                                            <th>所在行业</th>
                                            <th>所在单位及部门</th>
                                            <th>所在岗位</th>
                                            <th>单位性质</th>
                                            <th>工作类型</th>
                                            <th>绩效考核等级</th>
                                            <th>薪资（万/年）</th>
                                            <th>证明人</th>
                                            <th>证明人职务</th>
                                            <th>证明人电话</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>

                                <!-- begin edit --> 
                                <div class = "ln_solid" >
                                    </div>
                                <h2>新增 <small>  </small></h2>
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_work">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">开始时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="begintime" id="input_work_begin_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">结束时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="endtime" id="input_work_end_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">所在行业</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">所在单位及部门</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">所在岗位</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">单位性质</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="type" class="form-control">
                                                    <option>国有企业</option>
                                                    <option>国有控股企业</option>
                                                    <option>外资企业</option>
                                                    <option>民营企业</option>
                                                    <option>社会团体</option>
                                                    <option>自由职业</option>
                                                    <option>政府机关/事业单位</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">工作类型</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="type" class="form-control">
                                                    <option>实习</option>
                                                    <option>社会实践</option>
                                                    <option>工作</option>
                                                    <option>项目经验</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">绩效考核等级</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="type" class="form-control">
                                                    <option>优秀</option>
                                                    <option>良好</option>
                                                    <option>合格</option>
                                                    <option>待改进</option>
                                                    <option>不合格</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">薪资（万/年）</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">工作经历描述</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">证明人</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">证明人职务</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">证明人电话</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">离职原因</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 实习经历  -->
                    <!--  begin 专业职业资格证书  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>专业职业资格证书 <small>  </small></h2>
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
                                
                                <table id="table_certificate" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>证书类别</th>
                                            <th>证书名称</th>
                                            <th>获得年份</th>
                                            <th>认证机构</th>
                                            <th>认证时间</th>
                                            <th>证书编号</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>

                                <!-- begin edit --> 
                                <div class = "ln_solid" >
                                    </div>
                                <h2>新增 <small>  </small></h2>
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_certificate">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">证书类别</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">证书名称</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">获得年份</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">认证机构</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">认证时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="time" id="input_certificate_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">证书编号</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 专业职业资格证书  -->
                    <!--  begin 家庭背景与社会资源  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>家庭背景与社会资源 <small>  </small></h2>
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
                                
                                <table id="table_family" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>姓名</th>
                                            <th>性别</th>
                                            <th>关系</th>
                                            <th>出生年月</th>
                                            <th>人员状态</th>
                                            <th>工作单位</th>
                                            <th>担任职务</th>
                                            <th>政治面貌</th>
                                            <th>教育情况</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>

                                <!-- begin edit --> 
                                <div class = "ln_solid" >
                                    </div>
                                <h2>新增 <small>  </small></h2>
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_family">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">姓名</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">性别</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="type" class="form-control">
                                                    <option>男</option>
                                                    <option>女</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">关系</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="type" class="form-control">
                                                    <option>父</option>
                                                    <option>母</option>
                                                    <option>兄</option>
                                                    <option>弟</option>
                                                    <option>姐</option>
                                                    <option>妹</option>
                                                    <option>伯</option>
                                                    <option>叔</option>
                                                    <option>舅</option>
                                                    <option>姨</option>
                                                    <option>其他</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">出生年月</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="time" id="input_family_birthday_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">人员状态</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="type" class="form-control">
                                                    <option>有工作</option>
                                                    <option>无工作</option>
                                                    <option>已退休</option>
                                                    <option>已辞世</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">工作单位</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">担任职务</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">政治面貌</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">教育情况</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 家庭背景与社会资源  -->
                    <!--  begin 毕业论文及发表期刊  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>毕业论文及发表期刊 <small>  </small></h2>
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
                                
                                <table id="table_dissertation" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>论文/期刊名称</th>
                                            <th>刊物级别</th>
                                            <th>刊载时间/出版时间</th>
                                            <th>作者</th>
                                            <th>第几作者</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>

                                <!-- begin edit --> 
                                <div class = "ln_solid" >
                                    </div>
                                <h2>新增 <small>  </small></h2>
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_dissertation">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">论文/期刊名称</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">刊物级别</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="type" class="form-control">
                                                    <option>SCI</option>
                                                    <option>EI</option>
                                                    <option>国际期刊</option>
                                                    <option>国内核心期刊</option>
                                                    <option>国内一般期刊</option>
                                                    <option>SSCI</option>
                                                    <option>CSSCI</option>
                                                    <option>其他</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">刊载时间/出版时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="time" id="input_dissertation_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">作者</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">第几作者</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="type" class="form-control">
                                                    <option>第一</option>
                                                    <option>第二</option>
                                                    <option>第三</option>
                                                    <option>其他</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">文章/专著简介</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 毕业论文及发表期刊  -->
                    <!--  begin 职业规划  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
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
                    <div class="col-md-12 col-sm-12 col-xs-12">
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
                    <div class="col-md-12 col-sm-12 col-xs-12">
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
                    <div class="col-md-12 col-sm-12 col-xs-12">
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
                    <div class="col-md-12 col-sm-12 col-xs-12">
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

    $(document).ready(function() {
        initBaseinfoUI();
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
        initDissertationUI();
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
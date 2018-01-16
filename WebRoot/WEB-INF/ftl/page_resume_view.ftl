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
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <!--  begin 个人基本信息  -->  
                            <#include "div/div_resume_view_personal.ftl" />
                            <!--  end 个人基本信息  -->
                            <!--  begin 教育背景  -->
                            <#include "div/div_resume_view_education.ftl" />
                            <!--  end 教育背景  -->
                            <!--  begin 获奖阶段  -->
                            <#include "div/div_resume_view_awards.ftl" />
                            <!--  end 获奖阶段  -->
                            <!--  begin 外语能力描述  -->
                            <#include "div/div_resume_view_language.ftl" />
                            <!--  end 外语能力描述  -->
                            <!--  begin 计算机能力描述  -->
                            <#include "div/div_resume_view_computer.ftl" />
                            <!--  end 计算机能力描述  -->
                            <!--  begin 学生干部任职情况/学生工作  -->
                            <#include "div/div_resume_view_student_works.ftl" />
                            <!--  end 学生干部任职情况/学生工作  -->
                            <!--  begin 培训经历  -->
                            <#include "div/div_resume_view_train.ftl" />
                            <!--  end 培训经历  -->
                            <!--  begin 实践经历  -->
                            <#include "div/div_resume_view_practice.ftl" />
                            <!--  end 实践经历  -->
                            <!--  begin 实习经历  -->
                            <#include "div/div_resume_view_work.ftl" />
                            <!--  end 实习经历  -->
                            <!--  begin 专业职业资格证书  -->
                            <#include "div/div_resume_view_certificate.ftl" />
                            <!--  end 专业职业资格证书  -->
                            <!--  begin 家庭背景与社会资源  -->
                            <#include "div/div_resume_view_family.ftl" />
                            <!--  end 家庭背景与社会资源  -->
                            <!--  begin 毕业论文及发表期刊  -->
                            <#include "div/div_resume_view_dissertation.ftl" />
                            <!--  end 毕业论文及发表期刊  -->
                        </div>
                    </div>
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

</body>
</html>
<#assign path=request.contextPath />
<#assign as_currentuser="张大锤" />
<!DOCTYPE html>
<html lang="zh">

<#include "inc/inc_header.ftl" />

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <#include "inc/inc_leftmenu_user.ftl" />

        <#include "inc/inc_toprightnav.ftl" />

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="row">
                    <div class="col-md-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>欢迎使用网申信息系统 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="row">
                                    <div class="col-md-12">
                                        <!-- price element -->
                                        <div class="col-md-4 col-sm-6 col-xs-12 col-md-offset-2">
                                            <div class="pricing">
                                                <div class="title">
                                                    <h2></h2>
                                                    <h1>新建简历</h1>
                                                </div>
                                                <div class="x_content">
                                                    <div class="">
                                                        <div class="pricing_features">
                                                        <ul class="list-unstyled text-left">
                                                            <li><i class="fa fa-check text-success"></i> 中国银行模板</li>
                                                            <li><i class="fa fa-check text-success"></i> 中国银行模板</li>
                                                            <li><i class="fa fa-check text-success"></i> 中国银行模板</li>
                                                            <li><i class="fa fa-check text-success"></i> 中国银行模板</li>
                                                            <li><i class="fa fa-check text-success"></i> ......</li>
                                                        </ul>
                                                        </div>
                                                    </div>
                                                    <div class="pricing_footer">
                                                        <a href="${path}/resume/resume-add.page" class="btn btn-success btn-block" role="button"> <span> 立刻新建</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- price element -->

                                        <!-- price element -->
                                        <div class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="pricing">
                                                <div class="title">
                                                    <#--  <h2>查看简历</h2>  -->
                                                    <h1>查看简历</h1>
                                                </div>
                                                <div class="x_content">
                                                    <div class="">
                                                        <div class="pricing_features">
                                                            <ul class="list-unstyled text-left">
                                                                <li><i class="fa fa-check text-success"></i> 高针对性模板</li>
                                                                <li><i class="fa fa-check text-success"></i> 全自动化评分</li>
                                                                <li><i class="fa fa-check text-success"></i> 多年经验积累</li>
                                                                <li><i class="fa fa-check text-success"></i> 专业老师辅导</li>
                                                                <li><i class="fa fa-check text-success"></i> ...</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="pricing_footer">
                                                        <a href="${path}/resume/resume-list.page" class="btn btn-success btn-block" role="button"> <span> 前往查看</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- price element -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

        <#include "inc/inc_footer.ftl" />

    </div>
</div>

<#include "inc/inc_commonjs.ftl" />

</body>
</html>
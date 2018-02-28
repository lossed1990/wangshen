<#assign path=request.contextPath />
<#assign as_currentuser=Session.userss.strUsername />
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
                                <h2>欢迎使用网申后台系统 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="row">
                                    <!-- begin x_content --> 
                                    <div class="col-md-3">
                                        <div class="thumbnail">
                                            <div class="image view view-first">
                                                <img style="width: 100%; display: block;" src="${path}/image/media.jpg" alt="image" />
                                                <div class="mask">
                                                    <p>进入功能项</p>
                                                    <div class="tools tools-bottom">
                                                        <a href="${path}/resume/admin-resume-list.page"><i class="fa fa-pencil"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="caption">
                                                <a href="${path}/resume/admin-resume-list.page">学员信息简历浏览</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="thumbnail">
                                            <div class="image view view-first">
                                                <img style="width: 100%; display: block;" src="${path}/image/media.jpg" alt="image" />
                                                <div class="mask">
                                                    <p>进入功能项</p>
                                                    <div class="tools tools-bottom">
                                                        <a href="${path}/resumetmpl/resumetemplates-list.page"><i class="fa fa-pencil"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="caption">
                                                <a href="${path}/resumetmpl/resumetemplates-list.page">银行简历模拟配置</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="thumbnail">
                                            <div class="image view view-first">
                                                <img style="width: 100%; display: block;" src="${path}/image/media.jpg" alt="image" />
                                                <div class="mask">
                                                    <p>进入功能项</p>
                                                    <div class="tools tools-bottom">
                                                        <a href="${path}/config/ads-edit.page"><i class="fa fa-pencil"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="caption">
                                                <a href="${path}/config/ads-edit.page">广告展示内容配置</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="thumbnail">
                                            <div class="image view view-first">
                                                <img style="width: 100%; display: block;" src="${path}/image/media.jpg" alt="image" />
                                                <div class="mask">
                                                    <p>进入功能项</p>
                                                    <div class="tools tools-bottom">
                                                        <a href="${path}/config/wx-mobile-edit.page"><i class="fa fa-pencil"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="caption">
                                                <a href="${path}/config/wx-mobile-edit.page">短信网关配置</a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end x_content --> 
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
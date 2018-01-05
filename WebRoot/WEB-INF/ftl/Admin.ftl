<#assign path=request.contextPath />
<#assign as_currentuser="张大锤" />
<!DOCTYPE html>
<html lang="zh">

<#include "inc/inc_header.ftl" />

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <#include "inc/inc_leftmenu_admin.ftl" />

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
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <div class="image view view-first">
                                                <img style="width: 100%; display: block;" src="${path}/image/media.jpg" alt="image" />
                                                <div class="mask">
                                                    <p>进入功能项</p>
                                                    <div class="tools tools-bottom">
                                                        <a href="#"><i class="fa fa-pencil"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="caption">
                                                <p>学员信息简历浏览</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <div class="image view view-first">
                                                <img style="width: 100%; display: block;" src="${path}/image/media.jpg" alt="image" />
                                                <div class="mask">
                                                    <p>进入功能项</p>
                                                    <div class="tools tools-bottom">
                                                        <a href="#"><i class="fa fa-pencil"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="caption">
                                                <p>银行简历模拟配置</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <div class="image view view-first">
                                                <img style="width: 100%; display: block;" src="${path}/image/media.jpg" alt="image" />
                                                <div class="mask">
                                                    <p>进入功能项</p>
                                                    <div class="tools tools-bottom">
                                                        <a href="#"><i class="fa fa-pencil"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="caption">
                                                <p>广告展示内容配置</p>
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
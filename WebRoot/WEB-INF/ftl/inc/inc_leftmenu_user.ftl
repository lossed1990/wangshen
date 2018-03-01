<#assign path=request.contextPath />

<div class="col-md-3 left_col menu_fixed">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="#" class="site_title"><i class="fa fa-paw"></i> <span>首页</span></a>
        </div>

        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile clearfix">
            <div class="profile_pic">
                <img src="${path}/image/head.jpg" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>欢迎,</span>
                <h2>${as_currentuser}</h2>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- /menu profile quick info -->

        <br/>

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
            <#if Session.userss.bIsAdmin>
                <ul class="nav side-menu">
                    <li><a><i class="fa fa-home"></i> 系统管理 <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="${path}/resume/admin-resume-list.page">学员简历信息浏览</a></li>
                            <li><a href="${path}/resumetmpl/resumetemplates-list.page">银行简历模板配置</a></li>
                            <li><a href="${path}/config/ads-edit.page">广告展示内容配置</a></li>
                            <li><a href="${path}/config/wx-mobile-edit.page">短信网关配置</a></li>
                        </ul>
                    </li>
                </ul>
            <#else>
                <ul class="nav side-menu" id="left_menu">
                    <li><a><i class="fa fa-home"></i> 我的网申 <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="${path}/resume/resume-list.page">我的简历</a></li>
                            <li><a href="${path}/resume/resume-add.page">新建简历</a></li>
                        </ul>
                    </li>
                </ul>
            </#if>
            </div>
        </div>
        <!-- /sidebar menu -->
    </div>
</div>
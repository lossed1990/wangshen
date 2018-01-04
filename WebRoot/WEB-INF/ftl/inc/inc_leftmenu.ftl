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
                <h3>设备管理</h3>
                <ul class="nav side-menu">
                    <li><a><i class="fa fa-home"></i> DVR管理 <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="index.html">DVR划分</a></li>
                            <li><a href="index2.html">DVR配置</a></li>
                            <li><a href="index3.html">设置登录密码</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-edit"></i> 服务器管理 <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="form_advanced.html">流媒体管理</a></li>
                            <li><a href="form_validation.html">CMS管理</a></li>
                            <li><a href="form_wizards.html">报警服务器管理</a></li>
                            <li><a href="form_upload.html">巡检服务器管理</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-desktop"></i> 用户管理 <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="general_elements.html">用户增删改</a></li>
                            <li><a href="media_gallery.html">用户权限</a></li>
                            <li><a href="typography.html">用户有效期</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
            <div class="menu_section">
                <h3>系统配置</h3>
                <ul class="nav side-menu">
                    <li><a><i class="fa fa-bug"></i> 存储计划 <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="e_commerce.html">计划配置</a></li>
                            <li><a href="projects.html">时间段设置</a></li>
                            <li><a href="project_detail.html">Project Detail</a></li>
                            <li><a href="contacts.html">Contacts</a></li>
                            <li><a href="profile.html">Profile</a></li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-windows"></i> 编码管理 <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="page_403.html">省市编码管理</a></li>
                            <li><a href="page_404.html">404 Error</a></li>
                            <li><a href="page_500.html">500 Error</a></li>
                            <li><a href="plain_page.html">Plain Page</a></li>
                            <li><a href="login.html">Login Page</a></li>
                            <li><a href="pricing_tables.html">Pricing Tables</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div>
        <!-- /sidebar menu -->

        <!-- /menu footer buttons -->
        <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="系统配置">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="全屏显示">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="锁定">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="登出">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
        </div>
        <!-- /menu footer buttons -->
    </div>
</div>
<#assign path=request.contextPath />
<!-- top navigation -->
<div class="top_nav">
    <div class="nav_menu">
        <nav>
            <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
                       aria-expanded="false">
                        <img src="${path}/image/head.jpg" alt="">${as_currentuser}
                        <span class=" fa fa-angle-down"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                        <li><a href="javascript:;"> 用户设置</a></li>
                        <li>
                            <a href="javascript:;">
                                <span class="badge bg-red pull-right">50%</span>
                                <span>系统设置</span>
                            </a>
                        </li>
                        <li><a href="javascript:;">帮助</a></li>
                        <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> 登出</a></li>
                    </ul>
                </li>

                <#--  <li role="presentation" class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown"
                       aria-expanded="false">
                        <i class="fa fa-envelope-o"></i>
                        <span class="badge bg-green">6</span>
                    </a>
                    <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                        <li>
                            <a>
                                <span class="image"><img src="${path}/image/head.jpg" alt="Profile Image"/></span>
                                <span>
                          <span>${as_currentuser}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                            </a>
                        </li>
                        <li>
                            <a>
                                <span class="image"><img src="${path}/image/head.jpg" alt="Profile Image"/></span>
                                <span>
                          <span>${as_currentuser}</span>
                          <span class="time">3 分钟之前</span>
                        </span>
                                <span class="message">
                          还有尚未分配的DVR主机，请立即进入主机界面操作，否则可能导致部分视频无法预览
                        </span>
                            </a>
                        </li>
                        <li>
                            <div class="text-center">
                                <a>
                                    <strong>查看所有消息</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>  -->
            </ul>
        </nav>
    </div>
</div>
<!-- /top navigation -->

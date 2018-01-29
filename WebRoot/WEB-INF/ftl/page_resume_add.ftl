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
                                <h2>新建简历 <small> 您可以从以下银行模板中选择一个进行新建简历 </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="row">
                                    <#list lstTemps as index>
                                        <div class="col-md-55">
                                            <div class="thumbnail">
                                                <div class="image view view-first">
                                                    <img style="width: 100%; display: block;" src="${path}/file/download.page?fid=${index.strTempPic}" alt="image" />
                                                    <div class="mask">
                                                        <p>新建简历</p>
                                                        <div class="tools tools-bottom">
                                                            <a href="${path}/resume/resume-edit.page?temp_id=${index.nTempID}"><i class="fa fa-pencil"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="caption">
                                                    <p>${index.strTempName}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </#list>

                                    <!-- begin 一个入口示例  
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
                                    end 一个入口示例 --> 
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
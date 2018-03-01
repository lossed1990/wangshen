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
                                <h2>短信网关配置 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <p class="text-muted font-13 m-b-30">
                                    注意：修改短信模板无法立即生效，需要联系供应商报备模板后方可生效， <a href="https://wx.jcloud.com/api_7" target="_blank">购买数据</a>
                                </p>

                                <div class="form-horizontal form-label-left" style="padding-top: 20px;">
                                <form method="POST" enctype="application/x-www-form-urlencoded">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-3 col-xs-12">服务地址</label>
                                        <div class="col-md-4 col-sm-9 col-xs-12">
                                            <input name="uri" class="form-control" value="${(config.uri)!}" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-3 col-xs-12">APP KEY</label>
                                        <div class="col-md-4 col-sm-9 col-xs-12">
                                            <input name="appkey" class="form-control" value="${(config.appkey)!}" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-3 col-xs-12">短信模板</label>
                                        <div class="col-md-8 col-sm-9 col-xs-12">
                                            <input name="content" class="form-control" value="${(config.content)!}" type="text">
                                        </div>
                                    </div>
                                    <br/>
                                    <div class="form-horizontal form-label-left">
                                        <div class="form-group" >
                                            <button type="submit" class="btn btn-primary" id="btn_save">保存</button>
                                        </div>
                                    </div>
                                </form>
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
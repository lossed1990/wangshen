<#assign path=request.contextPath />
<#assign as_currentuser="张大锤" />
<!DOCTYPE html>
<html lang="zh">

<#include "inc/inc_header.ftl" />
<link href="${path}/vendors/bootstrap-fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css">
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
                                <h2>简历模板 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <p class="text-muted font-13 m-b-30">
                                    此处展示了目前所有的简历模板，您可通过该页面进行修改与删除。
                                </p>

                                <!-- begin resume table -->
                                <table id="table_resumetemplate" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>模板名称</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                                <!-- end resume table -->

                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>新增模板 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <p class="text-muted font-13 m-b-30">
                                    您可以通过此处，新建简历模板。
                                </p>
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_occupational_plan">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-12 col-xs-12">简历名称</label>
                                            <div class="col-md-4 col-sm-12 col-xs-12">
                                                <input name="" type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-12 col-xs-12">模板图片</label>
                                            <div class="col-md-4 col-sm-12 col-xs-12">
                                                <input id="input-picture" type="file" data-preview-file-type="text" >
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
                </div>
            </div>
        </div>
        <!-- /page content -->

        <#include "inc/inc_footer.ftl" />

    </div>
</div>

<#include "inc/inc_commonjs.ftl" />

<#include "inc/inc_datatablejs.ftl" />
<script src="${path}/vendors/bootstrap-fileinput/js/fileinput.min.js"></script>
<script src="${path}/vendors/bootstrap-fileinput/js/locales/zh.js"></script>
<script>
    //table test
    var $m_ui_table = $("#table_resumetemplate");  
    var m_tablecolumns = [ { 
            "data": "name"
        },        {    
            "data":  null,
            "className":   "center",
            "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>修改</a>&nbsp;&nbsp;<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
        }];
    var m_sourceSelect = new Array(); 
      
    var subItem = {
        name: '中国银行模板'
    };
    m_sourceSelect.push(subItem);

    $m_ui_table.DataTable({
        destroy: true, //可重新加载
        data: m_sourceSelect,
        columns: m_tablecolumns
    });

    $("#input-picture").fileinput({language : 'zh'});
</script>

</body>
</html>
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
                </div>
            </div>
        </div>
        <!-- /page content -->

        <#include "inc/inc_footer.ftl" />

    </div>
</div>

<#include "inc/inc_commonjs.ftl" />

<#include "inc/inc_datatablejs.ftl" />

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

</script>

</body>
</html>
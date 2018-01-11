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
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>我的简历 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <p class="text-muted font-13 m-b-30">
                                    此处展示了您目前所有的简历信息，您可通过该页面进行查看与修改。
                                </p>

                                <!-- begin resume table -->
                                <table id="table_resume" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>简历编号</th>
                                            <th>简历模板</th>
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
    var $m_ui_table = $("#table_resume");  
    
    var m_tablecolumns = [ { 
            "data": "id"
        },        {    
            "data": "type"
        },        {    
            "data":  null,
            "className":   "center",
            "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>详情</a>&nbsp;&nbsp;<a id="delrow" href="#"><i class="fa fa-trash-o"></i>修改</a>'      
        }];
    var m_sourceSelect = new Array(); 
      
    var subItem = {
        id: '1',
        type: '中国银行',
    };
    m_sourceSelect.push(subItem);

    $m_ui_table.DataTable({
        destroy: true, //可重新加载
        data: m_sourceSelect,
        columns: m_tablecolumns
    });

    $m_ui_table.removeAttr("style");

</script>

</body>
</html>
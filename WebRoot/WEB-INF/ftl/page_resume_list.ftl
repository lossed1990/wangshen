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
                                <table id="table_resume" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>简历编号</th>
                                            <th>简历模板</th>
                                            <th>最后修改时间</th>
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
    var $m_ui_table = $("#table_resume");  
    
    var m_tablecolumns = [ { 
            "data": "resume_id"
        },        {    
            "data": "tmplname"
        },        {    
            "data": "lastmodtime"
        },        {    
            "data":  null,
            "className":   "center",
            "defaultContent":   '<a id="menu_view" href="#"><i class="fa fa-television"></i>预览</a>&nbsp;&nbsp;<a id="menu_edit" href="#"><i class="fa fa-edit"></i>修改</a>&nbsp;&nbsp;<a id="menu_export" href="#"><i class="fa fa-share-square-o"></i>导出</a>&nbsp;&nbsp;<a id="menu_del" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
        }];

    $m_ui_table.DataTable({
        "columns": m_tablecolumns,
        "serverSide": true,
        "ordering": false,
        "ajax": {
            "type": "POST",
            "url": "${path}/resume/resume-list-datatable.json",
            "contentType": "application/json",
            "dataType": 'json',
            "data": function ( d ) {
                d.userid = ${Session.userss.nUserID};
                return JSON.stringify(d);
            }
        }
    });

    $m_ui_table.on( 'click', 'a#menu_view', function (even)  {        
        even.preventDefault; 
                
        var data = $m_ui_table.DataTable().row( $(this).parents('tr') ).data();  
        window.location.href = '${path}/resume/resume-view.page?resume_guid=' + data.resume_id;
        //window.location.href = '${path}/resume/resume-view-print.page?resume_id=' + data.resume_id;
    });

    $m_ui_table.on( 'click', 'a#menu_edit', function (even)  {        
        even.preventDefault; 
                
        var data = $m_ui_table.DataTable().row( $(this).parents('tr') ).data();  
        window.location.href = '${path}/resume/resume-edit.page?resume_guid=' + data.resume_id;
    });

    $m_ui_table.on( 'click', 'a#menu_export', function (even)  {        
        even.preventDefault; 
                
        var data = $m_ui_table.DataTable().row( $(this).parents('tr') ).data();  
        window.location.href = '${path}/resume/resume-edit.page?resume_guid=' + data.resume_id;

        window.location.href = '${path}/resume/resume-view-print.page?resume_id=' + data.resume_id + '&type=docx';
    });

    $m_ui_table.on( 'click', 'a#menu_del', function (even)  {        
        even.preventDefault; 
        var data = $m_ui_table.DataTable().row( $(this).parents('tr') ).data();     
        var textInfoStr = "确定要删除此条简历吗？";     
        swal({  
                title: "提示",
                text: textInfoStr,
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确定删除",
                cancelButtonText: "取消"
            },
            function(isConfirm) {  
                if (isConfirm) {           
                    $.ajax({               
                        url: "${path}/resume/resume-remove.json",
                        type: 'GET',
                        contentType: "application/json",
                        dataType: 'json',
                        data:  {
                            "resume_id": data.resume_id
                        },
                        success:  function(result) {              
                            if (result.ok) {  
                                //刷新页面
                                window.location.reload();  
                            } 
                            else {
                                toastr.error('删除失败,' + result.result); 
                            }              
                        },
                        error: function() {              
                            toastr.error('删除失败,请检查服务器及网络后重试！');            
                        }           
                    })  
                }
            });
    });

</script>

</body>
</html>
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
                    <div class="col-md-12 col-sm-12 col-xs-12">
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
                                <table id="table_resumetemplate" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>模板编号</th>
                                            <th>模板名称</th>
                                            <th>状态</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <#list lstTemps as index>
                                            <tr>
                                                <td>${index.nTempID}</td>
                                                <td>${index.strTempName}</td>
                                                <td>${index.bEnable?string("启用","禁用")} </td>
                                                <td>
                                                    <a id="menu_change_name" href="#"><i class="fa fa-pencil-square-o"></i>修改名称</a>&nbsp;&nbsp;
                                                    <a id="menu_change_logo" href="#"><i class="fa fa-file-image-o"></i>修改图片</a>&nbsp;&nbsp;
                                                    <a id="menu_change_rule" href="#"><i class="fa fa-object-ungroup"></i>修改模板</a>&nbsp;&nbsp;
                                                    <a id="menu_change_enable" href="#"><i class="fa fa-sliders"></i>${index.bEnable?string("禁用模板","启用模板")}</a>&nbsp;&nbsp;
                                                    <a id="menu_delete" href="#"><i class="fa fa-trash-o"></i>删除模板</a>
                                                </td>
                                            </tr>
                                        </#list>
                                    </tbody>
                                </table>
                                <!-- end resume table -->
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
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
                                    <form id="form_new_temp" action="${path}/resumetmpl/resumetemplates-new.page" method="POST" enctype="application/x-www-form-urlencoded">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-3 col-xs-12">简历名称</label>
                                            <div class="col-md-4 col-sm-9 col-xs-12">
                                                <input id="templatename" name="templatename" type="text" class="form-control" value="">
                                            </div>
                                            <input id="templatecover_id" name="templatecover_id" type="hidden" value="">
                                        </div>
                                    </form>
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-3 col-xs-12">模板图片</label>
                                        <div class="col-md-4 col-sm-9 col-xs-12">
                                            <input id="input-picture" type="file" name="file" data-preview-file-type="text" >
                                        </div>
                                    </div>
                                    <div class="form-group" >
                                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                            <button id="btn_add" type="submit" class="btn btn-primary" >新增</button>
                                        </div >
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- modal-->
        <div class="modal fade bs-example-modal-sm" id="modal_change_name" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title">修改模板名称</h4>
                    </div>
                    <div class="modal-body">
                        <h5>新模板名称：</h5>
                        <input class="form-control" id="input_new_name" type="text" placeholder="">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" id="btn_change_name">保存设置</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade bs-example-modal-sm" id="modal_change_logo" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title">修改模板图片</h4>
                    </div>
                    <div class="modal-body">
                        <h5>新模板名称：</h5>
                        <input id="input_new_logo" type="file" name="file" data-preview-file-type="text" >
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" id="btn_change_logo">保存设置</button>
                    </div>
                </div>
            </div>
        </div>    
        <!-- /modal-->

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
    $m_ui_table.DataTable();

    $m_ui_table.on( 'click', 'a#menu_change_name', function (even)  {        
        var data = $m_ui_table.DataTable().row($(this).parents('tr')).data();  
        
        $("#input_new_name").attr("data",data[0]);
        $("#modal_change_name").modal();
    }); 

    $m_ui_table.on( 'click', 'a#menu_change_logo', function (even)  {        
        var data = $m_ui_table.DataTable().row($(this).parents('tr')).data();  
        
        $("#input_new_logo").attr("data",data[0]);
        $("#modal_change_logo").modal();
    });

    $m_ui_table.on( 'click', 'a#menu_change_rule', function (even)  {        
        var data = $m_ui_table.DataTable().row($(this).parents('tr')).data();  
        window.location.href = '${path}/resumetmpl/resumetemplates-edit.page?temp_id=' + data[0];
    });

    $m_ui_table.on( 'click', 'a#menu_change_enable', function (even)  {        
        var data = $m_ui_table.DataTable().row($(this).parents('tr')).data(); 
        var enable = (data[2] == '启用') ? false : true;
         
        $.ajax({               
            url: "${path}/resumetmpl/resumetemplates-enable.json",
            type: 'POST',
            contentType: "application/json",
            dataType: 'json',
            data: JSON.stringify({
                "temp_id" : data[0],
                "enable" : enable
            }),
            success: function(result) {              
                if  (result.ok) {  
                    //$m_ui_table.DataTable().row($(this).parents('tr')).data(data).draw();   
                    //刷新页面
                    window.location.reload();
                } 
                else {
                    toastr.error('操作失败,' + result.result);       
                }              
            },
            error: function() {              
                toastr.error('操作失败,请检查服务器及网络后重试！');            
            }           
        });
    });

    $m_ui_table.on( 'click', 'a#menu_delete', function (even)  {        
        even.preventDefault; //方法阻止元素发生默认的行为（例如，当点击提交按钮时阻止对表单的提交）。  
        // 得到当前对象的值                 
        var data = $m_ui_table.DataTable().row( $(this).parents('tr') ).data();  

        var textInfoStr = "确定要删除模板[" + data[1] + "]吗？（注意：该操作将一并删除与之关联的简历信息）";
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
                        url: "${path}/resumetmpl/resumetemplates-purgeremove.json",
                        type: 'GET',
                        dataType: 'json',
                        data:  {
                            "temp_id": data[0]
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

    $("#btn_change_name").click(function(){
        if($("#input_new_name").val().trim() == ''){
            toastr.error('新模板名称不能为空！'); 
            return;
        }

        var param = {
            "temp_id": $("#input_new_name").attr("data"),
            "new_name": $("#input_new_name").val().trim(),
        };

        console.log(param);

        $.ajax({               
            url: "${path}/resumetmpl/resumetemplates-mod-name.json",
            type: 'POST',
            dataType: 'json',
            data: JSON.stringify(param),
            success: function(result) {              
                if  (result.ok) {  
                    toastr.success('模板名称修改成功');           
                    //刷新页面
                    window.location.reload();
                } 
                else {
                    toastr.error('模板名称修改失败,' + result.errorinfo); 
                }              
            },
            error: function() {              
                toastr.error('模板名称修改失败,请检查服务器及网络后重试！');            
            }           
        });
    });

    $("#btn_change_logo").click(function(){
        $("#input_new_logo").fileinput("upload");
    });

    $("#input-picture").fileinput({
        language : 'zh',
        uploadAsync: true,
        uploadUrl: "${path}/file/common-upload.json", //上传的地址
        allowedFileExtensions : ['jpg', 'png'],//接收的文件后缀,
        maxFileCount: 1,
        dropZoneEnabled: false,
        showUpload: false,
        enctype: 'multipart/form-data',
        layoutTemplates: {
            actionUpload:''
        }
    });

    $("#input_new_logo").fileinput({
        language : 'zh',
        uploadAsync: true,
        uploadUrl: "${path}/file/common-upload.json", //上传的地址
        allowedFileExtensions : ['jpg', 'png'],//接收的文件后缀,
        maxFileCount: 1,
        dropZoneEnabled: false,
        showUpload: false,
        enctype: 'multipart/form-data',
        layoutTemplates: {
            actionUpload:''
        }
    });
    
    $("#input-picture").on("fileuploaded", function(event, data, previewId, index) {
        if(data.response.ok){
            $("#templatecover_id").val(data.response.result);
            
            if($("#templatecover_id").val().trim() == ''){
                toastr.error('模板图片不能为空');     
                return;
            }

            $("#form_new_temp").submit();
        }else{
            toastr.error(data.response.errorinfo);
        }
    });

    $("#input_new_logo").on("fileuploaded", function(event, data, previewId, index) {
        if(data.response.ok){
            //图片上传成功后，修改数据库
            var param = {
                "temp_id": $("#input_new_logo").attr("data"),
                "new_cover_id": data.response.result
            };

            console.log(param);

            $.ajax({               
                url: "${path}/resumetmpl/resumetemplates-mod-cover.json",
                type: 'POST',
                dataType: 'json',
                data: JSON.stringify(param),
                success: function(result) {              
                    if  (result.ok) {  
                        toastr.success('模板图片修改成功');           
                        //刷新页面
                        //window.location.reload();
                    } 
                    else {
                        toastr.error('模板图片修改失败,' + result.errorinfo); 
                    }              
                },
                error: function() {              
                    toastr.error('模板图片修改失败,请检查服务器及网络后重试！');            
                }           
            });
        }else{
            toastr.error('图片上传失败，' + data.response.errorinfo);
        }
    });

    $("#btn_add").click(function(){
        if($("#templatename").val().trim() == ''){
            toastr.error('模板名称不能为空');     
            return;
        }

        $("#input-picture").fileinput("upload");
    });
</script>

</body>
</html>
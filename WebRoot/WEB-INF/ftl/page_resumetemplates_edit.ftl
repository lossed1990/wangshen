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
                <div class="row" id="config_body">
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_content">
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group" >
                                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-2" >
                                            <button class="btn btn-primary" id="btn_view">预览</button>
                                        </div >
                                    </div>
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
<#include "inc/inc_datatablejs.ftl" />

<script src="${path}/js/scorerule.js"></script>
<script>
    function savePart(param){
        $.ajax({    
            type: "POST",
            url: "${path}/resumetmpl/resumetemplates-part-save.json",
            cache:  false,
            contentType: "application/json",
            data: JSON.stringify(param),
            dataType: "json",
            success: function (result)  {
                if (result.ok) {
                    toastr.success('配置信息保存成功！');
                } else {
                    toastr.error(result.errorinfo);
                }  
            },
            error: function() {
                toastr.error('配置信息保存失败，请稍后重试！');
            }  
        }); 
    }

    function init(data, save_callback){
        $('#config_body').scorerule(${RequestParameters['temp_id']}, save_callback, data);
        $('.check_grey').iCheck({
            checkboxClass: 'icheckbox_flat-grey'
        });
    }
 
    //通过模板id，获取配置详情，并初始化界面
    $.ajax({    
        type: "GET",
        url: "${path}/resumetmpl/resumetemplates-detail.json",
        contentType: "application/json",
        cache:  false,
        data: { 'temp_id': ${RequestParameters['temp_id']} },
        dataType: "json",
        success: function (result)  {
            if (result.ok) {
                init(result.result, savePart);
            }else{
                init(null, savePart);
            }
        },
        error: function() {
            init(null, savePart);
        } 
    }); 

    $("#btn_view").click(function(){
        window.location.href = '${path}/resume/resume-edit.page?temp_id=' + ${RequestParameters['temp_id']} +'&preview=true';
    });
</script>

</body>
</html>
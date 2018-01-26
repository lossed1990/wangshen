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
                <div class="row" id="config_body">
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

    $.ajax({    
        type: "GET",
        url: "${path}/resumetmpl/resumetemplates-detail.json",
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
</script>

</body>
</html>
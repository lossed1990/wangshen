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
    <#--  $('#config_body').scorerule(${RequestParameters['temp_id']});  -->
    
    //debug
    $('#config_body').scorerule('temp_id');
    
    $('.check_grey').iCheck({
        checkboxClass: 'icheckbox_flat-grey'
    });
</script>

</body>
</html>
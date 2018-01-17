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
                    <!--  个人基本信息  -->  
                    <#include "div/div_resumetemplates_edit_personal.ftl" />
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
    
    $('#personal_scorerule').scorerule(['姓名',
        '曾用名',
        '性别',
        '出生年月',
        '民族',
        '籍贯',
        '政治面貌',
        '入党团时间',
        '身高#5',
        '体重#6',
        '血型',
        '婚姻状况',
        '生育状况',
        '健康状况',
        '生源地',
        '现居住地',
        '通讯地址',
        '户口所在地',
        '户口类别',
        '毕业时间',
        '参加工作时间',
        '证件类型',
        '证件号#1,3,4',
        '移动电话#1,2,4',
        '固定电话',
        'E-mail',
        '邮编',
        '紧急联系人',
        '紧急联系人电话',
        '免冠一寸照',
        '近期生活照',
        '学生证照片']);

    $('.check_grey').iCheck({
        checkboxClass: 'icheckbox_flat-grey'
    });

    // $(".icheckbox_flat-grey").css("margin-top", "8px");  

</script>

</body>
</html>
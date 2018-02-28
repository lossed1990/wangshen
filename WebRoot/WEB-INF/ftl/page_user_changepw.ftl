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
                    <div class="col-md-12 col-sm-12 col-xs-12" id="workplan">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>修改密码 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">旧密码</label>
                                        <div class="col-md-4 col-sm-12 col-xs-12">
                                            <input type="password" class="form-control resume-data" id="oldpass" placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">新密码</label>
                                        <div class="col-md-4 col-sm-12 col-xs-12">
                                            <input type="password" class="form-control resume-data" id="newpass" placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">确认密码</label>
                                        <div class="col-md-4 col-sm-12 col-xs-12">
                                            <input type="password" class="form-control resume-data" id="newpass_confirm" placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-group" >
                                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                            <button type="submit" class="btn btn-primary btn-resume-save" id="btn_submit">修改</button>
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

        <#include "inc/inc_footer.ftl" />

    </div>
</div>

<#include "inc/inc_commonjs.ftl" />
<script src="${path}/js/sha256.js"></script>
<script>
    function gIsNull(value) {            
        if (value.length == 0) {           
            return true;    
        }    
        return false;
    } 

    $('#btn_submit').click(function(){
        var oldpass = $('#oldpass').val().trim();
        if (gIsNull(oldpass)) {
            toastr.error('请输入原始密码！');
            return;
        }

        var newpass = $('#newpass').val().trim();
        if (gIsNull(newpass)) {
            toastr.error('请输入新密码！');
            return;
        }

        var newpass_confirm = $('#newpass_confirm').val().trim();
        if (gIsNull(newpass_confirm)) {
            toastr.error('请再次确认密码！');
            return;
        }

        if(newpass != newpass_confirm){
            toastr.error('确认密码不一致，请重新输入！');
            return;
        }

        $.ajax({    
            type: "POST",
            url: "${path}/user/change-user-password.json",
            contentType: "application/json",
            cache:  false,
            data: JSON.stringify({ 'oldpass': sha256_digest(oldpass) , 'newpass': sha256_digest(newpass), 'newpass_confirm': sha256_digest(newpass_confirm)}),
            dataType: "json",
            success: function (result)  {
                if (result.ok) {
                    toastr.success('密码修改成功！');
                }else{
                    toastr.error('密码修改失败，' + result.errorinfo);
                }  
            },
            error: function() {
                toastr.error('密码修改失败，请刷新重试！');
            } 
        });
    });
</script>
</body>
</html>
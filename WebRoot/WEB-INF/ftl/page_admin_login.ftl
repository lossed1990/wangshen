<#assign path=request.contextPath />
<#import "spring.ftl" as spring />

<!DOCTYPE html>
<html lang="zh">

<#include "inc/inc_header.ftl" />

<link href="${path}/vendors/bootstrapvalidator/css/bootstrapValidator.min.css" rel="stylesheet">

<body class="login">

<div>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <form id="loginform" action="${path}/user/admin-login.page" method="POST"
                      enctype="application/x-www-form-urlencoded">
                    <h1>管理员登陆</h1>
                    <div class="form-group">
                        <#if user??>
                            <@spring.bind "user.adminuser" />
                            <#if spring.status.error>
                                <li class="list-group-item list-group-item-danger"><@spring.showErrors "<br/>" /> </li>
                            </#if>
                        </#if>
                            <input type="text" class="form-control"
                                   placeholder="管理员账户" name="adminuser" value="admin"
                                   required="" readonly/>
                    </div>


                    <div class="form-group">
                        <#if user??>
                            <@spring.bind "user.password" />
                            <#if spring.status.error>
                                <li class="list-group-item list-group-item-danger"><@spring.showErrors "<br/>" /> </li>
                            </#if>
                        </#if>
                        <input type="password" class="form-control"
                               placeholder="管理密码" name="password"
                               required=""/>
                    </div>


                    <div class="row form-group">
                        <div class="col-xs-6" style="padding-right: 0;">
                            <#if user??>
                                <@spring.bind "user.captcha" />
                                <#if spring.status.error>
                                    <li class="list-group-item list-group-item-danger"><@spring.showErrors "<br/>" /> </li>
                                </#if>
                            </#if>
                            <input class="form-control" placeholder="<@spring.message code="page.user.login.captcha"/>"
                                   type="text" id="login_captcha" name="captcha"/>

                        </div>
                        <div class="col-xs-6 text-center">
                            <img src="${path}/captcha.png" style="cursor: pointer;"
                                 onclick="javascript:this.src='${path}/captcha.png?tm=' + Math.random(); $('#login_captcha').val('');"/>
                        </div>
                    </div>


                    <div class="form-group">
                        <button type="submit"
                                class="btn btn-primary"><@spring.message code="page.user.login.login"/></button>

                    </div>

                    <div class="separator">

                        <div class="clearfix"></div>
                        <br/>
                        <div>
                            <h1><i class="fa fa-paw"></i> <@spring.message code="page.user.systemname"/></h1>
                            <p>©<@spring.message code="page.user.copyrightinfo"/> </p>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>

<#include "inc/inc_commonjs.ftl" />

<script src="${path}/vendors/jshashes/hashes.min.js"></script>
<script src="${path}/vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
<script src="${path}/vendors/bootstrapvalidator/js/language/zh_CN.js"></script>

<script type="text/javascript">

    $(document).ready(function () {

        $('#loginform').bootstrapValidator({
            container: 'tooltip',
            message: '<@spring.message code="page.user.ajax.malformed"/>',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                adminuser: {
                    validators: {
                        notEmpty: {
                            message: '管理员账号不得为空'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '管理密码不得为空'
                        }
                    }
                },
                captcha: {
                    validators: {
                        threshold: 5,
                        notEmpty: {
                            message: '<@spring.message code="page.user.ajax.captchamust"/>'
                        },
                        remote: {
                            url: '${path}/user/check-captcha.json',
                            message: '<@spring.message code="page.user.ajax.badcaptcha"/>',
                            delay: 500,
                            type: 'GET'
                        },
                    }
                }
            }
        }).on('success.form.bv', function (e) {

            //hash password before submit
            var $input = $(e.target).find("input[name=password]");
            $input.val(new Hashes.SHA256().hex($input.val()));
        });
    });
</script>

</body>

</html>
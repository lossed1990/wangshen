<#assign path=request.contextPath />
<#import "spring.ftl" as spring />

<!DOCTYPE html>
<html lang="zh">

<#include "inc/inc_header.ftl" />

<link href="${path}/vendors/bootstrapvalidator/css/bootstrapValidator.min.css" rel="stylesheet">

<body class="login">

<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <div>
                    <p style="font-size:28px;"><i class="fa fa-paw"></i> 学信银行网申智能系统</p>
                    <p style="font-size:16px;"><i class=""></i> 30家银行网申系统模板 一键提交全智能打分</p>
                    <br/>
                </div>
                <form id="loginform" action="${path}/user/login.page" method="POST"
                      enctype="application/x-www-form-urlencoded">
                    <h1><@spring.message code="page.user.login.login"/></h1>
                    <div class="form-group">
                        <#if user??>
                            <@spring.bind "user.phonenumber" />
                            <#if spring.status.error>
                                <li class="list-group-item list-group-item-danger"><@spring.showErrors "<br/>" /> </li>
                            </#if>
                        </#if>
                        <input type="text" class="form-control"
                               placeholder="<@spring.message code="page.user.reg.mobilenumber"/>" name="phonenumber"
                               required=""/>
                    </div>
                    <div class="form-group">
                        <#if user??>
                            <@spring.bind "user.password" />
                            <#if spring.status.error>
                                <li class="list-group-item list-group-item-danger"><@spring.showErrors "<br/>" /> </li>
                            </#if>
                        </#if>
                        <input type="password" class="form-control"
                               placeholder="<@spring.message code="page.user.reg.password"/>" name="password"
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
                    <a class="reset_pass" href="${path}/user/reset-user-password.page"><@spring.message code="page.user.login.forgetpass"/></a>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link"><@spring.message code="page.user.login.notregisterd"/>
                            <a href="#signup" class="to_register"> <@spring.message code="page.user.reg.register"/> </a>
                        </p>

                        <div class="clearfix"></div>
                        <br/>
                        <div>
                            <p>© 2018 江苏学信职业培训学院版权设计 </p>
                        </div>
                    </div>
                </form>
            </section>
        </div>

        <div id="register" class="animate form registration_form">
            <section class="login_content">
                <div>
                    <p style="font-size:28px;"><i class="fa fa-paw"></i> 学信银行网申智能系统</p>
                    <p style="font-size:16px;"><i class=""></i> 30家银行网申系统模板 一键提交全智能打分</p>
                    <br/>
                </div>
                <form id="regform" action="${path}/user/user-register.page" method="POST"
                      enctype="application/x-www-form-urlencoded">

                    <h1><@spring.message code="page.user.reg.title"/></h1>
                    <div class="form-group">
                        <input type="text" class="form-control"
                               placeholder="<@spring.message code="page.user.reg.mobilenumber"/>" name="phonenumber"
                               id="idRegMobile" required=""/>
                    </div>

                    <div class="row form-group">
                        <div class="col-xs-7" style="padding-right: 0;">

                            <input id="idcode-btn" class="form-control"
                                   placeholder="<@spring.message code="page.user.reg.mobilevalidatecode"/>"
                                   maxlength="6"
                                   type="text" name="phonevalidate"/>

                        </div>
                        <div class="col-xs-5 text-center">
                            <button type="button" class="btn btn-primary"
                                    id="btnSendValidation" autocomplete="off"><@spring.message code="page.user.reg.getmobilecode"/></button>
                        </div>
                    </div>


                    <div class="form-group">
                        <input type="password" class="form-control"
                               placeholder="<@spring.message code="page.user.reg.password"/>" required=""
                               name="password"/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control"
                               placeholder="<@spring.message code="page.user.reg.confirm"/>" required=""
                               name="confirmPassword"/>
                    </div>
                    <div class="form-group">
                        <button type="submit"
                                class="btn btn-primary"><@spring.message code="page.user.reg.register"/></button>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link"><@spring.message code="page.user.reg.alreadyreg"/>
                            <a href="#signin" class="to_register"> <@spring.message code="page.user.login.login"/> </a>
                        </p>

                        <div class="clearfix"></div>
                        <br/>

                        <div>
                            <p>© 2018 江苏学信职业培训学院版权设计 </p>
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
        $('#regform').bootstrapValidator({
            container: 'tooltip',
            message: '<@spring.message code="page.user.ajax.malformed"/>',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                phonenumber: {
                    message: '<@spring.message code="page.user.ajax.badmobile"/>',
                    validators: {
                        notEmpty: {
                            message: '<@spring.message code="page.user.ajax.mobilemust"/>'
                        },
                        regexp: {
                            regexp: /^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}$/,
                            message: '<@spring.message code="page.user.ajax.badmobile"/>'
                        },
                        remote: {
                            url: '${path}/user/check-user-validation.json',
                            message: '<@spring.message code="page.user.ajax.mobileregisterd"/>',
                            delay: 1000,
                            type: 'GET'
                        }
                    }
                },
                phonevalidate: {
                    validators: {
                        notEmpty: {
                            message: '<@spring.message code="page.user.ajax.mobilecodemust"/>'
                        },
                        remote: {
                            url: '${path}/user/check-phonecode-validation.json',
                            message: '<@spring.message code="page.user.ajax.badvalidatecode"/>',
                            delay: 1000,
                            type: 'GET'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '<@spring.message code="page.user.ajax.passwordmust"/>'
                        },
                        stringLength: {
                            min: 6,
                            max: 128,
                            message: '<@spring.message code="page.user.ajax.passlength"/>'
                        }
                    }
                },
                confirmPassword: {
                    validators: {
                        notEmpty: {
                            message: '<@spring.message code="page.user.ajax.passconfirm"/>'
                        },
                        identical: {
                            field: 'password',
                            message: '<@spring.message code="page.user.ajax.passnotsame"/>'
                        }
                    }
                }
            }
        }).on('success.form.bv', function(e) {

            //hash password before submit
            var $input = $(e.target).find("input[name=password]");
            $input.val(new Hashes.SHA256().hex($input.val()));
        });

        $('#loginform').bootstrapValidator({
            container: 'tooltip',
            message: '<@spring.message code="page.user.ajax.malformed"/>',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                phonenumber: {
                    message: '<@spring.message code="page.user.ajax.badmobile"/>',
                    validators: {
                        notEmpty: {
                            message: '<@spring.message code="page.user.ajax.mobilemust"/>'
                        },
                        regexp: {
                            regexp: /^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}$/,
                            message: '<@spring.message code="page.user.ajax.badmobile"/>'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '<@spring.message code="page.user.ajax.passwordmust"/>'
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
        }).on('success.form.bv', function(e) {

            //hash password before submit
            var $input = $(e.target).find("input[name=password]");
            $input.val(new Hashes.SHA256().hex($input.val()));
        });

        $('#btnSendValidation').click(function () {
            var btnSend = $(this);
            if($('#regform').data("bootstrapValidator").isValidField('phonenumber')) {
                $.ajax({
                    url: "${path}/user/send-mobile-validation.json",
                    data: { mobile : $('#idRegMobile').val() },
                    success: function (response, status) {
                        if(status == "success") {
                            if(response.ok) {
                                time(btnSend, 60);
                            }
                        }
                    },
                    dataType: "json"
                });
            } else {
                $('#regform').data("bootstrapValidator").validateField('phonenumber');
            }
        });
    });

    function time(o, wait) {
        if (wait == 0) {
            o.removeAttr("disabled");
            o.html('<@spring.message code="page.user.reg.getmobilecode"/>');
        } else {
            o.attr("disabled", true);
            o.html(wait + " S");
            wait--;
            setTimeout(function() {
                    time(o, wait)
                }, 1000);
        }
    }
</script>

</body>

</html>
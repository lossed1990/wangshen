<#assign path=request.contextPath />
<#import "spring.ftl" as spring />

<!DOCTYPE html>
<html lang="zh">

<#include "inc/inc_header.ftl" />

<link href="${path}/vendors/bootstrapvalidator/css/bootstrapValidator.min.css" rel="stylesheet">

<body class="login">

<div>
    <a class="hiddenanchor" id="signup"></a>


    <div class="login_wrapper">

        <div id="register" class="animate form login_form">
            <section class="login_content">
                <form id="regform" method="POST" enctype="application/x-www-form-urlencoded">

                    <h1>密码重置</h1>
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
                               placeholder="新密码" required=""
                               name="password"/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control"
                               placeholder="<@spring.message code="page.user.reg.confirm"/>" required=""
                               name="confirmPassword"/>
                    </div>
                    <div class="form-group">
                        <button type="submit"
                                class="btn btn-primary">修改密码</button>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">

                        <div class="clearfix"></div>
                        <br/>

                        <div>
                            <h1><i class="fa fa-paw"></i> <@spring.message code="page.user.systemname"/></h1>
                            <p>© <@spring.message code="page.user.copyrightinfo"/> </p>
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
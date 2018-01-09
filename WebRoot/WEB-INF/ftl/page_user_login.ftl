<#assign path=request.contextPath />
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
                <form id="loginform">
                    <h1>登录</h1>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="手机号" name="phonenumber" required=""/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="密码" name="password" required=""/>
                    </div>

                    <div class="row form-group">
                        <div class="col-xs-6" style="padding-right: 0;">

                            <input class="form-control" placeholder="验证码" type="text" id="login_captcha" name="captcha"/>

                        </div>
                        <div class="col-xs-6 text-center">
                            <img src="${path}/captcha.png" style="cursor: pointer;" onclick="javascript:this.src='${path}/captcha.png?tm=' + Math.random(); $('#login_captcha').val('');" />
                        </div>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">登录</button>

                    </div>
                    <a class="reset_pass" href="#">忘记密码?</a>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">尚未注册?
                            <a href="#signup" class="to_register"> 注册 </a>
                        </p>

                        <div class="clearfix"></div>
                        <br/>
                        <div>
                            <h1><i class="fa fa-paw"></i> 银行网申系统</h1>
                            <p>©2018 江苏学信职业培训学院 All Rights Reserved. </p>
                        </div>
                    </div>
                </form>
            </section>
        </div>

        <div id="register" class="animate form registration_form">
            <section class="login_content">
                <form id="regform">
                    <h1>注册</h1>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="手机号" name="phonenumber" required=""/>
                    </div>

                    <div class="row form-group">
                        <div class="col-xs-7" style="padding-right: 0;">

                            <input id="idcode-btn" class="form-control" placeholder="请输入校验码" maxlength="6"
                                   type="text" name="phonevalidate"/>

                        </div>
                        <div class="col-xs-5 text-center">
                            <button type="button" class="btn btn-primary" autocomplete="off">获取短信校验码</button>
                        </div>
                    </div>


                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="密码" required="" name="password"/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="再次输入" required=""
                               name="confirmPassword"/>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">注册</button>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">已经注册 ?
                            <a href="#signin" class="to_register"> 登陆 </a>
                        </p>

                        <div class="clearfix"></div>
                        <br/>

                        <div>
                            <h1><i class="fa fa-paw"></i> 银行网申系统</h1>
                            <p>©2018 江苏学信职业培训学院 All Rights Reserved. </p>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>

<#include "inc/inc_commonjs.ftl" />

<script src="${path}/vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
<script src="${path}/vendors/bootstrapvalidator/js/language/zh_CN.js"></script>

<script type="text/javascript">

    $(document).ready(function () {
        $('#regform').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                phonenumber: {
                    message: '手机号码填写不正确',
                    validators: {
                        notEmpty: {
                            message: '手机号必须填写'
                        },
                        regexp: {
                            regexp: /^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}$/,
                            message: '请填写正确的手机号'
                        }
                    }
                },
                phonevalidate: {
                    validators: {
                        notEmpty: {
                            message: '手机校验码必须填写'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码字段必须填写'
                        },
                        stringLength: {
                            min: 6,
                            max: 30,
                            message: '密码不得少于6位，不得大于30位'
                        }
                    }
                },
                confirmPassword: {
                    validators: {
                        notEmpty: {
                            message: '请再次输入密码'
                        },
                        identical: {
                            field: 'password',
                            message: '两次输入密码必须一致'
                        }
                    }
                }
            }
        });

        $('#loginform').bootstrapValidator({
            container: 'tooltip',
            message: '有部分内容填写错误',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                phonenumber: {
                    message: '手机号码填写不正确',
                    validators: {
                        notEmpty: {
                            message: '手机号必须填写'
                        },
                        regexp: {
                            regexp: /^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}$/,
                            message: '请填写正确的手机号'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码字段必须填写'
                        }
                    }
                },
                captcha: {
                    validators: {
                        threshold :  5,
                        notEmpty: {
                            message: '必须填写验证码'
                        },
                        remote: {
                            url: '${path}/user/check-captcha.json',
                            message: '验证码不正确',
                            delay :  500,
                            type: 'GET'
                        },
                    }
                }
            }
        });
    });
</script>

</body>

</html>
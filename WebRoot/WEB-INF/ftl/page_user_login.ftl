<#assign path=request.contextPath />
<!DOCTYPE html>
<html lang="en">

<#include "inc/inc_header.ftl" />

<body class="login">
    <div>
        <a class="hiddenanchor" id="signup"></a>
        <a class="hiddenanchor" id="signin"></a>

        <div class="login_wrapper">
            <div class="animate form login_form">
                <section class="login_content">
                    <form>
                        <h1>登录</h1>
                        <div>
                            <input type="text" class="form-control" placeholder="手机号" required="" />
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="密码" required="" />
                        </div>
                        <div>
                            <a class="btn btn-default submit" href="index.html">登录</a>
                            <a class="reset_pass" href="#">忘记密码?</a>
                        </div>

                        <div class="clearfix"></div>

                        <div class="separator">
                            <p class="change_link">尚未注册?
                                <a href="#signup" class="to_register"> 注册 </a>
                            </p>

                            <div class="clearfix"></div>
                            <br />
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
                    <form>
                        <h1>注册</h1>
                        <div>
                            <input type="text" class="form-control" placeholder="手机号" required="" />
                        </div>
                        <div>
                            <input type="text" class="form-control" placeholder="验证码" required="" />
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="密码" required="" />
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="再次输入" required="" />
                        </div>
                        <div>
                            <a class="btn btn-default submit" href="index.html">注册</a>
                        </div>

                        <div class="clearfix"></div>

                        <div class="separator">
                            <p class="change_link">已经注册 ?
                                <a href="#signin" class="to_register"> 登陆 </a>
                            </p>

                            <div class="clearfix"></div>
                            <br />

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
</body>

</html>
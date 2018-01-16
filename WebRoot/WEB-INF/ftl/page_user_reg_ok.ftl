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
                <form>
                    <h1><@spring.message code="page.user.reg.success"/></h1>

                </form>

                <div class="alert alert-success" role="alert">
				  <@spring.message code="page.user.reg.successinfo"/>
                    &nbsp;&nbsp;
                    <a href="${path}/user/login.page" class="alert-link">
				  	<@spring.message code="page.user.login.login"/>
                    </a>
                </div>

            </section>
        </div>

    </div>
</div>

<#include "inc/inc_commonjs.ftl" />

</body>

</html>
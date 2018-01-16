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
                <h1><@spring.message code="page.user.reg.error"/></h1>
                
                <ul class="list-group">
                
                <@spring.bind "user.phonenumber" />  
                <#if spring.status.error>
   					<li class="list-group-item list-group-item-danger"><@spring.showErrors "<br/>" /> </li> 
   				</#if>
   				
   				<@spring.bind "user.phonevalidate" />  
                <#if spring.status.error>
   					<li class="list-group-item list-group-item-danger"><@spring.showErrors "<br/>" /> </li> 
   				</#if>
   				
   				<@spring.bind "user.password" />  
                <#if spring.status.error>
   					<li class="list-group-item list-group-item-danger"><@spring.showErrors "<br/>" /> </li> 
   				</#if>
   				
   				<ul>   				
            </form>
            </section>
        </div>

    </div>
</div>

<#include "inc/inc_commonjs.ftl" />

</body>

</html>
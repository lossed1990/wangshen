<#assign path=request.contextPath />
<#import "spring.ftl" as spring />

<!DOCTYPE html>
<html lang="zh">

<#include "inc/inc_header.ftl" />

<link href="${path}/vendors/bootstrapvalidator/css/bootstrapValidator.min.css" rel="stylesheet">

<body>

<div class="row">
  <div class="col-xs-6 col-md-4"></div>
  <div class="col-xs-6 col-md-4">
  

<div class="panel panel-danger" style="margin-top: 100px;">
  <div class="panel-heading">
    <h3 class="panel-title text-center">
    	<@spring.message code="page.runtime.error.title"/>
    </h3>
  </div>
  <div class="panel-body">
    <#if error??>
    	<@spring.message code="page.runtime.error.errorcode"/> : ${error.strErrorCode} &nbsp;&nbsp; ${error.strErrorInfo}
    </#if>
  </div>
</div>

</div>
  <div class="col-xs-6 col-md-4"></div>
</div>

<#include "inc/inc_commonjs.ftl" />

</body>
</html>
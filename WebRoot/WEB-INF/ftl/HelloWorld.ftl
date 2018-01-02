<#assign path=request.contextPath />
<!DOCTYPE html>
<html lang="zh">


<body class="nav-md">

<table>
   <#list data as label>
        <tr>
            <td>${label.strErrorCode}</td>
            <td>${label.strErrorInfo}</td>
        </tr>
   </#list>
</table>


</body>
</html>
<#assign path=request.contextPath />

<!-- jQuery -->
<#if JQUERY_VERSION??>
	<#if JQUERY_VERSION == 1>
		<script src="${path}/js/jquery-1.11.1.min.js"></script>
	<#elseif JQUERY_VERSION == 3>
		<script src="${path}/js/jquery-3.1.1.min.js"></script>
	</#if>
<#else>
	<script src="${path}/js/jquery-2.2.4.min.js"></script>
</#if>
<!-- Bootstrap -->
<script src="${path}/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${path}/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="${path}/vendors/nprogress/nprogress.js"></script>

<!-- daterangepicker -->
<script type="text/javascript" src="${path}/js/moment.js"></script>
<script type="text/javascript" src="${path}/js/daterangepicker.js"></script>

<!-- iCheck -->
<script src="${path}/vendors/iCheck/icheck.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="${path}/js/custom.min.js"></script>
<%@ page contentType="text/html; charset=utf-8" language="java"%>

<html>
<head><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>打印预览</title>
<%@ include file="../common/base.jsp" %>
</head>
<body>
<!--container-->
	<div id="container">
	    <!--main-->
	    <div class="main">
	        <!--content-->
	        <div class="content">
	            <div class="con_container">
	                <div class="cp_print">
	                 <div id="cp_img">
	                    	<div class="cp_img" id="cp_imp_inner">
	                    	
	                    	</div>
	                  </div>
	                </div>
	            </div>
	        </div>
	        <!--content
	        <p>打印日期：${printTime }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作员：${loginName }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;打印人</p>-->
	    </div>
	    <!--main-->
	</div>

</body>
<script type="text/javascript">
	$("#cp_imp_inner").append(window.opener.getContent());
	window.print();
</script>
</html>



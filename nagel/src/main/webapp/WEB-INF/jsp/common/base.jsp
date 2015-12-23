<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<base href="${pageContext.request.contextPath}/">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<meta name="apple-mobile-web-app-capable" content="yes"/>
<link href="${pageContext.request.contextPath}/static/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/static/css/s-page.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/static/css/fakeLoader.css" rel="stylesheet"  />
<link href="${pageContext.request.contextPath}/static/css/showLoading.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/static/css/page.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/static/css/tablesorter.css" rel="stylesheet" type="text/css" /> 
<link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"  />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/fakeLoader.css">
<link href="${pageContext.request.contextPath}/static/css/showLoading.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.js"></script>
<script src="${pageContext.request.contextPath}/static/js/CityJson.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/ProJson.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/DistrictJson.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/ajaxfileupload.js" type="text/javascript" ></script>
<script src="${pageContext.request.contextPath}/static/js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/jqPaginator.js"></script>
<script src="${pageContext.request.contextPath}/static/js/fakeLoader.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.showLoading.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/common.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.tablesorter.min.20151103.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/prompt.js" type="text/javascript"></script>
<script type="text/javascript">
	var sortflag = true;
	// 排序方法
	function sortFuntion(){
		if (sortflag) {
	   		tablesorter.init();
	    	sortflag = false;
		}else {
	    	tablesorter.reSort(0);  
		}
	}
	$(document).ready(function(e) {
		if($("#totalCount").html() == '' || $("#totalCount").html() == null || $("#totalCount").html() == 0){
			loadPage(1,1,20);
		}else{
			if($("#selItem").val() != '' && $("#selItem").val() != null){
				// 总页数
				var totalPage = Math.ceil($("#totalCount").html()/$("#selItem").val());
				// 执行分页的语句
				loadPage(totalPage,1,$("#selItem").val());
			}
		}
		// 当前页面显示条数的变化时，触发
		$("#selItem").change(function(){
			loadResult(1,$("#selItem").val());
		});
		$("#query_button").click(function(){
			loadResult(1,$("#selItem").val());
		});
	});
</script>


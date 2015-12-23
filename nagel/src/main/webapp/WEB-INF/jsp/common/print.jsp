<%@ page contentType="text/html; charset=utf-8" language="java"%>

<html>
<head><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>打印预览</title>
<link href="${pageContext.request.contextPath}/static/css/common.css" rel="stylesheet" type="text/css"/>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.js"></script>
<style>
.p_table_1{padding:10px;color:#039;}
.p_table_1 h2{text-align:center;font-size:18px;text-align:center;padding:15px 0px;}
.p_table_1 table{border-top:1px solid #d0e6e4;border-right:1px solid #d0e6e4;}
.p_table_1 td{border-bottom:1px solid #d0e6e4;border-left:1px solid #d0e6e4;height:30px;color:#333;text-align:center;}
.p_table_1 th{border-bottom:1px solid #d0e6e4;border-left:1px solid #d0e6e4;height:30px;color:#333;text-align:center;}
.p_table_1 p{padding:15px 0px 15px 40px;color:#999;}
</style>
</head>
<body style="background:#FFF;">
<div class="p_table_1">
  <h2>${printName }</h2>
  <input type="hidden" id="hideColumn" name="hideColumn" value="${hideColumn }">
  <input type="hidden" id="thColumn" name="thColumn" value="${thColumn }">
  <table cellpadding="0" cellspacing="0" border="0" width="100%" id="printTable">
       
  </table>
  <p>打印日期：${printTime }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作员：${loginName }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;打印人</p>
</div>
</body>
<script type="text/javascript">
	var hideColumn = $("#hideColumn").val();
	var thColumn = $("#thColumn").val();
	$("#printTable").append(window.opener.getContent());
	if(hideColumn!=null && hideColumn.length > 0){
		if(thColumn !=null && thColumn != "undefined"){
			var temp=0;
			$("table tr").find("th:eq("+thColumn+")").each(function(){
				if(temp == 0){
					$(this).hide();
				}
				temp=1;
			});
			$("table tr").find("td:eq("+hideColumn+")").hide();
		}else{
			$("table tr").find("th:eq("+hideColumn+")").hide();
			$("table tr").find("td:eq("+hideColumn+")").hide();
		}		
	}
	window.print();
</script>
</html>



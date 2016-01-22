<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
<%@ include file="../common/base.jsp" %>
<script type="text/javascript">
   function doSome(){
	   $.ajax({
		   type:'POST',
		   url:'${pageContext.request.contextPath}/room/addRoom',
		   data:$('#roomInfo').serialize(),
		   success: function(data) {
			 if(data){
				 alert("房间信息添加成功!");
			 }else{
				 alert("房间信息添加失败!");
			 }
		   }
	   });
   }
</script>
</head>
<body>
<!--head-->
<div id="head">
    <%@ include file="../common/head.jsp" %>
</div>
<!--head end-->
<div id="pageId">02-02</div>
<!-- menu -->
    <%@ include file="../common/menu.jsp" %>
<!-- menu end -->
<!--container-->
<div class="content">
    <ul class="breadcrumb">
        <li class="active">房间管理<span class="divider">/</span></li>
        <li class="active">添加房间</li>
    </ul>
    <form id="roomInfo">
    <table class="formTable">
       <thead>
         <tr>
            <th colspan="2">添加房间信息</th>  
         </tr>
       </thead>
       <tr>
            <td>房间号:</td>
            <td><input name="roomId" type="text"  class="input-small" /></td>
       </tr>
       <tr>
            <td>价格(元/月):</td>
            <td><input name="price" type="text"  class="input-small" /></td>
       </tr>
       <tr>
            <td class="bottomTable" colspan="2">
                <input type="button" value="添加" onclick="doSome();"/>
                <input type="reset" value="重置" />
            </td>
       </tr>
    </table>

    </form>
<!--main-->
</div>
<!--container-->
    <%@ include file="../common/foot.jsp" %>
</body>
</html>
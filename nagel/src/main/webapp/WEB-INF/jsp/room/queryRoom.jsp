<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
<%@ include file="../common/base.jsp" %>
</head>

<body>
<!--head-->
<div id="head">
    <%@ include file="../common/head.jsp" %>
</div>
<!--head end-->
<div id="pageId">02-01</div>
<!-- menu -->
    <%@ include file="../common/menu.jsp" %>
<!-- menu end -->
<!--container-->
<div class="content">
    
<table class="table table-bordered table-hover">
   <caption>悬停表格布局</caption>
   <thead>
      <tr>
         <th>房间号</th>
         <th>房间价格(元/月)</th>
         <th>状态</th>
         <th>住房时间</th>
         <th>出租天数</th>
         <th>退房时间</th>
      </tr>
   </thead>
   <tbody>
        <c:forEach var="room" items="${data.pageList}">
            <tr>
                <td>${room.roomId}</td>
                <td>${room.price}</td>
                <td>
                    <c:if test="${room.state == 0}">
                                                                     空闲
                    </c:if>
                    <c:if test="${room.state == 1} ">
                                                                     入住
                    </c:if>
                </td>
                <td>${room.checkTime}</td>
                <td>${room.leaseTime}</td>
                <td>${room.expireTime}</td>
            <tr>
        </c:forEach>
   </tbody>
</table>
<!--main-->
<%@include file="../common/page.jsp" %>
</div>
<!--container-->
    <%@ include file="../common/foot.jsp" %>
</body>
</html>
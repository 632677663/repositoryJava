<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
<%@ include file="common/base.jsp" %>
</head>

<body id="body">
<!--head-->
<div id="head">
	<%@ include file="common/head.jsp" %>
</div>
<!--head end-->
<!-- menu -->
    <%@ include file="common/menu.jsp" %>
<!-- menu end -->
<!--container-->
<div class="content">
<div class="row-fluid">
    <div class="block">
        <a href="#page-stats" class="block-heading" data-toggle="collapse">房态</a>
        <div id="page-stats" class="block-body collapse in">

            <div class="stat-widget-container">
                <div class="stat-widget">
                    <div class="stat-button">
                        <p class="title">房间总数</p>
                        <p class="detail">Accounts</p>
                    </div>
                </div>

                <div class="stat-widget">
                    <div class="stat-button">
                        <p class="title">已出租数</p>
                        <p class="detail">Subscribers</p>
                    </div>
                </div>

                <div class="stat-widget">
                    <div class="stat-button">
                        <p class="title">剩余房间数</p>
                        <p class="detail">Pending</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--main-->
</div>
<!--container-->
    <%@ include file="common/foot.jsp" %>
</body>
</html>
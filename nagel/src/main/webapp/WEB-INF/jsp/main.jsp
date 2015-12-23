<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
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
<!--container-->
<div id="container">
    <div id="pageId">01</div>
	<!--sidebar-->
	<%@ include file="common/menu.jsp" %>
    <!--sidebar-->
    <!--main-->
    <div class="main">
    	<div class="location">
        	首页
        </div>
        <!--content-->
        <div class="content">
        	<div class="row cf">
                <!--每日实时汇总-->
                <div class="indexBlock indexBlock1">
                    <h2>每日实时汇总</h2>
                    <ul class="cf">
                        <li class="cell_green">
                            <i></i>
                            <div class="data">
                                <span>￥234.00</span>
                                <p>销量（元）</p>
                            </div>
                        </li>
                        <li class="cell_blue">
                            <i></i>
                            <div class="data">
                                <span>￥234.00</span>
                                <p>代消费（元）</p>
                            </div>
                        </li>
                        <li class="cell_pink">
                            <i></i>
                            <div class="data">
                                <span>￥234.00</span>
                                <p>中奖金额（元）</p>
                            </div>
                        </li>
                        <li class="cell_yellow">
                            <i></i>
                            <div class="data">
                                <span>￥234.00</span>
                                <p>提现（元）</p>
                            </div>
                        </li>
                        <li class="cell_orange">
                            <i></i>
                            <div class="data">
                                <span>￥234.00</span>
                                <p>渠道充值总额（元）</p>
                            </div>
                        </li>
                        <li class="cell_blue2">
                            <i></i>
                            <div class="data">
                                <span>￥234.00</span>
                                <p>彩民充值总额（元）</p>
                            </div>
                        </li>
                    </ul>
                </div>  
                <!--每日实时汇总-->
                <!--本月彩种销量统计-->
                <div class="indexBlock indexBlock2">
                    <h2>本月彩种销量统计：<span>（截止到凌晨00：00）</span></h2>
                    <div class="dataBox">
                    
                    </div>
                </div>
                <!--本月彩种销量统计--> 
            </div>
            <div class="hr mg_tb_30"></div>
            <div class="row">
                <!--本月彩种中奖统计-->
                <div class="indexBlock indexBlock3">
                    <h2>本月彩种中奖统计：<span>（截止到凌晨00：00）</span></h2>
                    <table width="100%">
                        <thead>
                            <tr>
                                <th>彩种</th><th>中小奖数</th><th>中小奖总额</th><th>中大奖数</th><th>中大奖总额</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>双色球</td><td class="green">100</td><td class="green">1000</td><td class="green">0</td><td class="green">0</td>
                            </tr>
                            <tr>
                                <td>七乐彩</td><td class="green">100</td><td class="green">1000</td><td class="green">0</td><td class="green">0</td>
                            </tr>
                            <tr>
                                <td>福彩3D</td><td class="green">100</td><td class="green">1000</td><td class="green">0</td><td class="green">0</td>
                            </tr>
                            <tr>
                                <td>总计</td><td class="green">100</td><td class="green">1000</td><td class="red">0</td><td class="red">0</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--本月彩种中奖统计--> 
                <!--本月每日彩种销量走势图-->
                <div class="indexBlock indexBlock4">
                    <h2>本月每日彩种销量走势图（单位/万元）：<span>（截止到凌晨00：00）</span></h2>
                    <div class="dataBox">
                    
                    </div>
                </div>
                <!--本月每日彩种销量走势图--> 
            </div>
            <!-- 待兑大奖通知 start -->
            <div id="notice" class="notice">
              <h2>兑大奖通知<span></span></h2>
              <p>平台中还有<span>${size }</span>个未兑大奖快到期！<br />请联系渠道进行兑奖</p>
            </div>
            <!-- 待兑大奖通知 end -->
        </div>
        <!--content-->
        <!--foot-->
        <div id="foot">
        	<p>北京掌中彩信息科技有限公司  提供技术支持</p>
        </div>
        <!--foot-->
    </div>
    <!--main-->
</div>
<!--container-->

<script src="${pageContext.request.contextPath}/static/js/basic.js"></script>
<script type="text/javascript">
	$(function(){
		$('#notice h2 span').click(function(){
			$('#notice').hide();
		});
		/* $("#notice p span").click(function(){
			window.location.pathname = "${pageContext.request.contextPath}/platformManagement/bigPrizeManagement/queryBigPrizeInit";
		}) */
	});
</script>
</body>
</html>
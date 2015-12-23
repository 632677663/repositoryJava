<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!--sidebar-->
    	<div id="sidebar" class="sidebar">
    	<ul class="side_list">
        	<li style="height:39px; border-bottom:1px solid javascript:void();e6e6e6; background:javascript:void();fafafa"></li>
            <li class="menu"><a href="javascript:void();" class="nav1 btn_toggle" id="01"><i class="menu_txt">首页</i></a></li>
            <li class="menu">
	                <a href="javascript:void();" class="nav2 btn_toggle" id="02"><i class="menu_txt">平台管理</i><span class="triangle"><em></em></span></a>
	                <ul class="side_list2">
		                	<li>
		                        <a href="javascript:void();" class="btn_toggle" id="02-01"><span class="triangle_l"></span>渠道管理<span class="triangle"><em></em></span></a>
		                        <ul class="side_list3">
		                        		<li><a id="02-01-01"  href="partner/showPartnerList" onclick="clickPartner()"><span class="triangle_l"></span>渠道信息管理</a></li>
		                        		<li><a id="02-01-02"  href="platformManagement/partnerManagement/partnerAccountManagement/list" onclick="clickPartner()"><span class="triangle_l"></span>渠道账号管理</a></li>
		                        		<li><a id="02-01-03"  href="platformManagement/partnerManagement/partnerAccountManagement/checkPartnerCharge"onclick="clickPartner()"><span class="triangle_l"></span>渠道充值审核</a></li>
		                        		<li><a id="02-01-04"  href="partner/partnerGameManager"  onclick="clickPartner()" onclick="clickPartner()"><span class="triangle_l"></span>渠道彩种审核</a></li>
		                        		<li><a id="02-01-05"  href="partner/showPartnerStationList"><span class="triangle_l"></span>投注站号管理</a></li>
		                        </ul>
		                    </li>
		                    <li>
		                        <a href="javascript:void();" class="btn_toggle" id="02-02">站主管理<span class="triangle_l"></span><span class="triangle"><em></em></span></a>
		                        <ul class="side_list3">
		                        		<li><a href="站主信息管理.html" id="02-02-01"><span class="triangle_l"></span>站主信息管理</a></li>
		                        		<li><a href="开通线上投注站.html" id="02-02-02"><span class="triangle_l"></span>开通线上投注站</a></li>
		                        </ul>
		                    </li>
	                    	<li>
		                        <a href="javascript:void();" class="btn_toggle" id="02-03">彩民管理<span class="triangle_l"></span><span class="triangle"><em></em></span></a>
		                        <ul class="side_list3">
		                        		<li><a href="user/userList" id="02-03-01"><span class="triangle_l"></span>用户明细查询</a></li>
		                        		<li><a href="user/userChargeCheck" id="02-03-02"><span class="triangle_l"></span>用户充值审核</a></li>
		                        		<li><a href="userFund/userFundDetail" id="02-03-03"><span class="triangle_l"></span>资金明细查询</a></li>
		                        		<li><a href="userFund/userFundTotal" id="02-03-04"><span class="triangle_l"></span>资金累计查询</a></li>
		                        		<li><a href="userFund/userOrderDetail" id="02-03-05"><span class="triangle_l"></span>订单明细查询</a></li>
		                        		<li><a href="短信列表查询.html" id="02-03-06"><span class="triangle_l"></span>短信列表查询</a></li>
		                        </ul>
		                    </li>
		                    <li>
		                        <a href="javascript:void();" class="btn_toggle" id="02-04">账务管理<span class="triangle_l"></span><span class="triangle"><em></em></span></a>
		                        <ul class="side_list3">
			                        	<li><a href="financeManager/chargeOrderQuery" id="02-04-01"><span class="triangle_l"></span>充值订单查询</a></li>
			                            <li><a href="financeManager/encashManager" id="02-04-02"><span class="triangle_l"></span>提现管理</a></li>
		                        </ul>
		                    </li>
	                </ul>
                </shiro:hasPermission>
            </li>
            
            <li class="menu">
                <a href="javascript:void();" class="nav4 btn_toggle" id="04"><i class="menu_txt">系统管理</i><span class="warn"></span></a>
                <ul class="side_list2">
	                	<li>
	                        <a href="javascript:;" class="btn_toggle" id="04-01"><span class="triangle_l"></span>角色管理<span class="triangle"><em></em></span></a>
	                        <ul class="side_list3">
	                        		<li><a href="roleManagement/showSaveOrUpdateRole?type=save" id="04-01-01" onclick="clickPartner()"><span class="triangle_l"></span>添加角色</a></li>
	                        		<li><a href="roleManagement/showRoleManager" id="04-01-02"><span class="triangle_l"></span>角色管理</a></li>
	                        </ul>
	                    </li>

                    <li>
                        <a href="javascript:;" class="btn_toggle" id="04-02"><span class="triangle_l"></span>操作员管理<span class="triangle"><em></em></span></a>
                        <ul class="side_list3">
                        	<li><a href="operatorManagement/showSaveOrUpdateOperator?type=save" id="04-02-01"><span class="triangle_l"></span>添加管理员</a></li>
                            <li><a href="operatorManagement/showOperatorList" id="04-02-02"><span class="triangle_l"></span>管理操作员</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" class="btn_toggle" id="04-03"><span class="triangle_l"></span>个人资料管理<span class="triangle"><em></em></span></a>
                        <ul class="side_list3">
                        	<li><a href="user/showUserPassword" id="04-03-01"><span class="triangle_l"></span>密码修改</a></li>
                            <li><a href="user/showUserModify" id="04-03-02"><span class="triangle_l"></span>资料修改</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="menu">
            		<a href="javascript:void();" class="nav2 btn_toggle" id="05"><i class="menu_txt">系统配置</i><span class="triangle"><em></em></span></a>
	                <ul class="side_list2">
		                	<li>
		                        <a id="05-01"  href="system/partnerLevelConfig" onclick="clickPartner()"><span class="triangle_l"></span>查看渠道级别</a>
		                    </li>
		                	<li>
		                        <a id="05-02"  href="system/gameInfo" onclick="clickPartner()"><span class="triangle_l"></span>查看彩种</a>
		                    </li>
		                	<li>
		                        <a id="05-04"  href="bettingResourceConfig/showBettingResourceList" onclick="clickPartner()"><span class="triangle_l"></span>投注来源配置</a>
		                    </li>
		                	<li>
		                        <a id="05-03"  href="system/queryhotLineConfiguration" onclick="clickPartner()"><span class="triangle_l"></span>热线客户端配置</a>
		                    </li>
	                </ul>
            </li>
        </ul>
        <div class="btn_collapse"></div>
    </div>
    <!--sidebar-->
<script type="text/javascript">
	var flagTable = false;
	function clickPartner(){
		$("#body").showLoading();
	}
	function clickCol(){
		//alert(flagTable);
		if(flagTable){
			$("#tableResult").hideLoading();
			$("#tableResult").showLoading();
		}
	}
</script>

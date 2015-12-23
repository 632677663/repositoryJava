// JavaScript Document
$(document).ready(function(e) {
	//左侧导航收缩展开
    var $btn_toggle=$(".sidebar .btn_toggle");
	$btn_toggle.click(function(){
		if($(this).hasClass("open")){
			$(this).removeClass("open");
			$(this).siblings().has(".btn_currPage").siblings(".btn_toggle").addClass("active");//收缩的是当前页则加上active
		}else{
			$(this).addClass("open").removeClass("active").has(".btn_currPage").parent(".menu").addClass("curr");//展开点击列表
			$(this).parent().siblings().children(".open").removeClass("open");//合上相邻的展开
			$(this).parent().siblings().has(".btn_currPage").children(".btn_toggle").addClass("active");//如果合上的是当前页则当前页父元素加上active
		}
	});
	
	//显示当前页导航样式
	var $btn_currPage=$("#sidebar .side_list3 a");
	$btn_currPage.click(function(){
		$(this).addClass("btn_currPage");	
		$(this).parent().siblings().children("a").removeClass("btn_currPage");
	});
	
	//收缩左侧导航
	var $btn_collapse=$(".sidebar .btn_collapse");
	$btn_collapse.toggle(
		function(){
			$(this).addClass("pull_left");
			$("#sidebar").addClass("sidebar_min").removeClass("sidebar_max");
			$(".side_list2").hide();
			// 窗口 div 透明效果   当需要更改不同的 div 时 ，修改clickCol这个方法
 			clickCol();
		},
		function(){
			$(this).removeClass("pull_left");
			$("#sidebar").removeClass("sidebar_min").addClass("sidebar_max");	
			// 窗口 div 透明效果，修改clickCol这个方法
			clickCol();
		}
	);
	//浏览器宽度小于1024时
	$("#head .btn_menu").toggle(
		function(){
			$(this).addClass("active");
			$(".sidebar").animate({left:"0"}, "slow");	
		},
		function(){
			$(this).removeClass("active");
			$(".sidebar").animate({left:"-190px"}, "slow");
		}
	)
	//当前页样式
	var pageId=$("#pageId").html();
	var pageNumLen=pageId.split("-").length;
	if(pageNumLen==1){
		$("#"+pageId).addClass("active");
	}else if(pageNumLen==2){
		$("#"+pageId).addClass("active")
		.parents(".menu").addClass("curr").children(".btn_toggle").first().addClass("open")
	}else if(pageNumLen==3){
		$("#"+pageId).addClass("btn_currPage")
		.parents(".side_list3").siblings(".btn_toggle").addClass("open")
		.parents(".menu").addClass("curr").children(".btn_toggle").first().addClass("open");
	}
});
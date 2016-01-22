$(document).ready(function(e) {
	var pageId = $("#pageId").html();
	/*var pageIdLen=pageId.split("-").length;*/
	//获取a标签所在的ul对象
	$("#"+pageId).parents("ul").first().addClass("in");
});
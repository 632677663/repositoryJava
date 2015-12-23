(function($){
	if (typeof prompt == "undefined" || !prompt) {
		prompt = {};
	};
	
	var bgBox = '<div id="mask"></div>';//遮罩
	var alertWindow = '<div id="popBox">'+
						'<h2>提示</h2>'+
						'<a href="javascript:;" class="close"></a>'+
						'<div class="pop_content">'+
							'<p class="txt_c pd_t_35"></p>'+
						'</div>'+
						'<div class="pop_button">'+
							'<a id="alert_ok" class="center" href="javascript:;">确定</a>'+
						'</div>'+
						'</div>';
	var confirmWindow = '<div id="popBox">'+
						'<h2>提示</h2>'+
					    '<a href="javascript:;" class="close"></a>'+
					    '<div class="pop_content">'+
					    	'<p class="txt_c pd_t_35"></p>'+
					    '</div>'+
					    '<div class="pop_button">'+
					    	'<a id="confirm_ok" href="javascript:;">确定</a>'+
					        '<a id="confirm_cancel" href="javascript:;">取消</a>'+
					    '</div>'+
					'</div>';
	var confirmWindow2 = '<div id="popBox">'+
					'<h2>提示</h2>'+
					'<a href="javascript:;" class="close"></a>'+
					'<div class="pop_content">'+
					'<p class="txt_c pd_t_35"></p>'+
					'</div>'+
					'<div class="pop_button">'+
					'<a id="confirm_ok2" href="javascript:;"></a>'+
					'<a id="confirm_cancel2" href="javascript:;"></a>'+
					'</div>'+
					'</div>';
	
	/**
	 * alert提示框
	 * msg必填
	 * ok_callback 确定按钮自定义函数非必填;可使用[]占位
	 * close_callback 关闭按钮自定义函数非必填;可使用[]占位
	 * 例如：
	 * prompt.alert("操作成功",[],function(){});
	 * prompt.alert("操作失败");
	 */
	prompt.alert = function(msg,ok_callback,close_callback){
		
		$(function(){
			var bgObj = $("html").data("bgBox");
			var msgObj = $("html").data("alertWindow");
			if(!bgObj){
				bgObj = $(bgBox).appendTo("html");
				$("html").data("bgBox", $(bgObj));
			}
			if(!msgObj){
				msgObj = $(alertWindow).appendTo("html");
				$("html").data("alertWindow", $(msgObj));
			}
			$("p", msgObj).text(msg);
			msgObj.show();
			bgObj.show();
			$("#mask").height($(document).height()+'px');
			$("#alert_ok", msgObj).unbind("click");
			$("#alert_ok", msgObj).click(function(){
				$(bgObj).hide();
				$(msgObj).hide();
				if ($.isFunction(ok_callback)) {
					ok_callback.apply(window, []);
				};
			});
			
			$(".close").unbind("click");
			$(".close").click(function(){
				msgObj.hide(); 
				bgObj.hide();
				if ($.isFunction(close_callback)) {
					close_callback.apply(window, []);
				};
			});
		});
		
	};
	
	/**
	 * confirm提示框
	 * msg必填
	 * 例如：
	 * prompt.confirm("操作完成",function(){alert("确定");},function(){alert("取消");},function(){alert("关闭");});
	 */
	prompt.confirm = function(msg,ok_callback,cancel_callback,close_callback){
		
		$(function(){
			var bgObj = $("html").data("bgBox");
			var msgObj = $("html").data("confirmWindow");
			if(!bgObj){
				bgObj = $(bgBox).appendTo("html");
				$("html").data("bgBox", $(bgObj));
			}
			if(!msgObj){
				msgObj = $(confirmWindow).appendTo("html");
				$("html").data("confirmWindow", $(msgObj));
			}
			$("p", msgObj).text(msg);
			msgObj.show();
			bgObj.show();
			$("#mask").height($(document).height()+'px');
			$("#confirm_ok", msgObj).unbind("click");
			$("#confirm_ok", msgObj).click(function(){
				$(bgObj).hide();
				$(msgObj).hide();
				if ($.isFunction(ok_callback)) {
					ok_callback.apply(window, []);
				};
			});
			$("#confirm_cancel", msgObj).unbind("click");
			$("#confirm_cancel", msgObj).click(function(){
				$(bgObj).hide();
				$(msgObj).hide();
				if ($.isFunction(cancel_callback)) {
					cancel_callback.apply(window, []);
				};
			});
			
			$(".close").unbind("click");
			$(".close").click(function(){
				msgObj.hide(); 
				bgObj.hide();
				if ($.isFunction(close_callback)) {
					close_callback.apply(window, []);
				};
			});
		});
		
	};
	prompt.confirm2 = function(btn1,btn2,msg,ok_callback,cancel_callback,close_callback){
		
		$(function(){
			var bgObj = $("html").data("bgBox");
			var msgObj = $("html").data("confirmWindow2");
			if(!bgObj){
				bgObj = $(bgBox).appendTo("html");
				$("html").data("bgBox", $(bgObj));
			}
			if(!msgObj){
				msgObj = $(confirmWindow2).appendTo("html");
				$("html").data("confirmWindow2", $(msgObj));
			}
			$("p", msgObj).text(msg);
			$("#confirm_ok2").text(btn1);
			$("#confirm_cancel2").text(btn2);
			msgObj.show();
			bgObj.show();
			$("#mask").height($(document).height()+'px');
			$("#confirm_ok2", msgObj).unbind("click");
			$("#confirm_ok2", msgObj).click(function(){
				$(bgObj).hide();
				$(msgObj).hide();
				if ($.isFunction(ok_callback)) {
					ok_callback.apply(window, []);
				};
			});
			$("#confirm_cancel2", msgObj).unbind("click");
			$("#confirm_cancel2", msgObj).click(function(){
				$(bgObj).hide();
				$(msgObj).hide();
				if ($.isFunction(cancel_callback)) {
					cancel_callback.apply(window, []);
				};
			});
			
			$(".close").unbind("click");
			$(".close").click(function(){
				msgObj.hide(); 
				bgObj.hide();
				if ($.isFunction(close_callback)) {
					close_callback.apply(window, []);
				};
			});
		});
		
	};
})(jQuery);
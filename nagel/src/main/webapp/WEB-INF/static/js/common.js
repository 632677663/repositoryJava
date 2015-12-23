// 总页数、当前第几页，每页的条数
function loadPage(totalPage,pageNum,numPerPage){
	$.jqPaginator('#pageCur', {
        totalPages: totalPage,
        visiblePages: 3,
        currentPage: pageNum,
        onPageChange: function (num, type) {
        	if(type == "change"){//  init  以及change两个值
        		loadResult(num,numPerPage);
        	}
        }
    });
}
//验证日期的正确性
function checkDate(){
	if($("#startTime").val() != null && $("#endTime").val() != null
			&& $("#startTime").val() != "" && $("#endTime").val() != ""
			&& $("#startTime").val() > $("#endTime").val()){
		prompt.alert("选择时间错误");
		return false;
	}
	return true;
}
//分页的触发函数（页数,每页的行数）
function loadResultPerfect(page,numPerPage,urlAddr,param){
	$("#tableResult").hideLoading();
	$.ajax({
		url:urlAddr,
		type:'post',
		data:param+ "&pageNum=" + page +"&numPerPage=" + numPerPage,
		beforeSend:function(XMLHttpRequest){
			$("#tableResult").showLoading();
			flagTable = true;
        },
        error:function(XMLHttpRequest, textStatus, errorThrown){
        	prompt.alert("系统错误");
        	$("#tableResult").hideLoading();
        },
        success:function(data){
        	var to = Math.ceil(data.totalCount/numPerPage);
        	if(to == 0){
        		loadPage(1,1,numPerPage);
        	}else{
        		while(page > to){
        			page --;
        		}
        		loadPage(to,page,numPerPage);
        	}
        	$("#selItem").val(data.numPerPage);
        	$("#totalCount").html(data.totalCount);
        	flagTable = false;
        	$("#tableResult").hideLoading();
        	$("#bodyResult").html("");
        	loadTableResult(data);
        	// 排序
        	sortFuntion();
        }
	});
}
(function($){
	if (typeof tablesorter == "undefined" || !tablesorter) {
		tablesorter = {};
	};
	
	/**
	 * 根据th class sort样式初始化tablesorter
	 */
	tablesorter.init = function(){
		$(function(){
			var headers ="{";
			var ths = $(".tablesorter th");
			ths.each(function(i,e){
				if (!$(e).hasClass("sort")) {
					headers += "\""+i+"\":{\"sorter\" : false}";
					if (i<ths.length-1) {
						headers += ",";
					}
				}else if ($(e).hasClass("sort currency")) {
					headers += "\""+i+"\":{\"sorter\" : \"currency\"}";
					if (i<ths.length-1) {
						headers += ",";
					}
				}
			});
			headers += "}";
			//console.log(headers);
			$.tablesorter.defaults.headers = JSON.parse(headers); 
			$(".tablesorter").tablesorter();
			
			$(".tablesorter").bind("sortStart", function() {
				$(".tablesorter").trigger("update");//更新缓存
				
			});
		});
	};
	
	/**
	 * 重新排序
	 * flag 0:按上次排序方式展示；1：重置排序
	 */
	tablesorter.reSort = function(flag){
		if (flag==0) {
			var sorton = [];
			$(".tablesorter th").each(function(i,e){
				if ($(e).hasClass("sort")) {
					if ($(e).hasClass("headerSortDown")) {
						sorton.push([i,0]);//降序
					}else if ($(e).hasClass("headerSortUp")) {
						sorton.push([i,1]);//升序
					}
				}
			});
			$(".tablesorter").trigger("sorton",[sorton]);
		}else if (flag==1) {
			$(".tablesorter th").removeClass("headerSortUp").removeClass("headerSortDown");
		}
		
	};
})(jQuery);

function doPrint(printName,hideColumn,thColumn,flagContext){
	var twidth = screen.width;
	var theight = screen.height;
	var tleft = 0;
	var ttop = 0;
	var submitUrl = "print/printController?printName="+printName+"&hideColumn="+hideColumn+"&thColumn="+thColumn+"&flagContext="+flagContext;
	submitUrl = encodeURI(encodeURI(submitUrl));
	wndprnt=window.open(submitUrl, "", "left=" + tleft + ",top=" + ttop + ",height=" + theight + ",width=" + twidth + ",directories=no," +
			 "location=no,menubar=yes,scrollbars=yes," +
			 "resizeable=yes,status=no,toolbar=no"); 
};

/**
验证框的ID，验证的格式（number，date，email等），是否允许为空（true 允许为空 false 不允许为空）
**/
function changeValue(id,type,flag){
	var val = $("#"+id+"").val();  // 验证框的值
	var s = $("#"+id+"s"); //成功显示控件
	var e = $("#"+id+"e");//失败显示控件
	var Zhu = $("#"+id+"Zhu"); // 失败显示信息控件
	Zhu.html("");
	s.hide();
	e.hide();
	Zhu.hide();
	return verifyIsEmpty(val,type,s,e,Zhu,flag);
}
// 验证不为空
function verifyEmpty(val){
	//开始验证
	if(val == null || val.length < 1){
		return true;
	}
	return false;
}
// 验证值是否为空
function verifyIsEmpty(val,type,s,e,Zhu,flag){
	var thisType = "empty";
	if(type != thisType){
		return verifyNumber(val,type,s,e,Zhu);//邮箱验证
	}
	if(!flag){//不许为空
		//开始验证
		if(verifyEmpty(val)){
			e.show();
			Zhu.show();
			Zhu.append("该值不能为空");
			return false;
		}
	}
	s.show();
	return true;
}
// 数字必填验证
function verifyNumber(val,type,s,e,Zhu,flag){
	var thisType = "number";
	if(type != thisType){
		return verifyEmail(val,type,s,e,Zhu);//邮箱验证
	}
	if(!flag){//不许为空
		//开始验证
		if(verifyEmpty(val)){
			e.show();
			Zhu.show();
			Zhu.append("该值不能为空");
			return false;
		}
	}
	//开始验证
	if(!verifyEmpty(val)){  //非空  向下走
		var reg = new RegExp("^(([0-9]+\\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\\.[0-9]+)|([0-9]*[1-9][0-9]*))$");  
		if(!reg.test(val)){ 
			e.show();
			Zhu.show();
			Zhu.append("请输入数字!");
	        return false;
	    }
	}
	s.show();
	return true;
}
function verifyEmail(val,type,s,e,Zhu,flag){
	var thisType = "email";
	if(type != thisType){
		//verifyEmail(val,type,s,e,Zhu);//邮箱验证
		e.show();
		Zhu.show();
		Zhu.append("判断的类型不匹配");
		return false;
	}
	if(!flag){//不许为空
		//开始验证
		if(verifyEmpty(val)){
			e.show();
			Zhu.show();
			Zhu.append("该邮箱不能为空");
			return false;
		}
	}
	//开始验证
	if(!verifyEmpty(val)){  //非空  向下走
		var reg = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;  
		if(!reg.test(val)){ 
			e.show();
			Zhu.show();
			Zhu.append("请输入正确的邮箱!");
	        return false;
	    }
	}
	s.show();
	return true;
}

/**加载数据函数（页面弹出对话框添加数据后重新加载数据）
 * @param tableResult   数据加载到的table-tbody中
 * @param urlAddr		加载数据URL
 * @param param			加载数据传入参数
 */
function loadResultPerfectNotPage(tableResult,urlAddr,param,page,numPerPage){
	$("#container").hideLoading();
	if(param != null){
		param = param+ "&pageNum=" + page +"&numPerPage=" + numPerPage;
	}else{
		param = "&page=1";
	}	
	$.ajax({
		url:urlAddr,
		type:'post',
		data:param,
		beforeSend:function(XMLHttpRequest){
			$("#container").showLoading();
        },
        error:function(XMLHttpRequest, textStatus, errorThrown){
        	prompt.alert("系统错误");
        	$("#container").hideLoading();
        },
        success:function(data){
        	if(data.totalCount != null && data.totalCount != undefined){
        		var to = Math.ceil(data.totalCount/numPerPage);
            	if(to == 0){
            		loadPage(1,1,numPerPage);
            	}else{
            		while(page > to){
            			page --;
            		}
            		loadPage(to,page,numPerPage);
            	}
            	$("#selItem").val(data.numPerPage);
            	$("#totalCount").html(data.totalCount);
        	}
        	
        	$("#container").hideLoading();
        	$("#"+tableResult).html("");
        	loadTableResultNotPage(data,tableResult);
        }
	});
}
//数字格式化           要转换的字符，小数点位数，分割符
function fmoney(s, n , str){
   if(verifyEmpty(s)){ //为空返回空
	   return "";
   }
   n = n > 0 && n <= 20 ? n : 2;
   s = parseFloat((s + "").replace(/[^\d\.-]/g, "")).toFixed(n) + "";
   var l = s.split(".")[0].split("").reverse(),
   r = s.split(".")[1];
   t = "";
   for(i = 0; i < l.length; i ++ ){
      t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? str : "");
   }
   return t.split("").reverse().join("") + "." + r;
}
//为空
function reStrIfNull(val){
	if(verifyEmpty(val) || val == 'undefined'){
		return "";
	}
	return val;
}
//全选/全不选
function switchCb(){
	$(".cb").each(function(i,e){
		if ($(".cbAll").attr("checked")) {
			$(e).attr("checked",true);
		}else{
			$(e).attr("checked",false);
		}
		
	});
}
//重置选择,子checkbox调用
function reCb(thiz){
	var flag = true;
	if (!$(thiz).attr("checked") && $(".cbAll").attr("checked")) {
		$(".cbAll").attr("checked",false);
	}else {
		$(".cb").each(function(i,e){
			if (!$(e).attr("checked")) {
				flag = false;
				return false;
			}			
		});
		if (flag) {
			$(".cbAll").attr("checked",true);
		}
	}
}
//分页提交表单信息
function gotoPage(pageNum){
   $(document.forms[0]).append("<input type='hidden' name='pageNum' value='" + pageNum +"'>");
   document.forms[0].submit();
}
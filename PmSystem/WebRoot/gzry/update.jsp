<%@ page language="java" import="java.util.*" pageEncoding="utf-8" 
contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@ taglib uri="/WEB-INF/paging.tld" prefix ="page" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
      <link href="style/bootstrap.css" rel="stylesheet">
  <!-- Font awesome icon -->
  <link rel="stylesheet" href="style/font-awesome.css"> 
  <!-- jQuery UI -->
  <link rel="stylesheet" href="style/jquery-ui.css"> 
  <!-- Calendar -->
  <link rel="stylesheet" href="style/fullcalendar.css">
  <!-- prettyPhoto -->
  <link rel="stylesheet" href="style/prettyPhoto.css">  
  <!-- Star rating -->
  <link rel="stylesheet" href="style/rateit.css">
  <!-- Date picker -->
  <link rel="stylesheet" href="style/bootstrap-datetimepicker.min.css">
  <!-- CLEditor -->
  <link rel="stylesheet" href="style/jquery.cleditor.css"> 
  <!-- Uniform -->
  <link rel="stylesheet" href="style/uniform.default.css"> 
  <!-- Bootstrap toggle -->
  <link rel="stylesheet" href="style/bootstrap-switch.css">
  <!-- Main stylesheet -->
  <link href="style/style.css" rel="stylesheet">
  <!-- Widgets stylesheet -->
  <link href="style/widgets.css" rel="stylesheet">   
  

  <!-- Favicon -->
  <link rel="shortcut icon" href="img/favicon/favicon.png">

  <!-- 日历JavaScript -->
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<link href="rili/css/jquery.datepick.css" rel="stylesheet">
<script src="rili/js/jquery-1.8.3.min.js"></script>
<script src="rili/js/jquery.plugin.js"></script>
<script src="rili/js/jquery.datepick.js"></script>
<script>
$(function() {
	$('#popupDatepicker').datepick();
	$('#inlineDatepicker').datepick({onSelect: showDate});
});
function showDate(date) {
	alert('The date chosen is ' + date);
}
</script>
<script type="text/javascript">
var ischeck;
 $(document).ready(function() {
	$("#regbtn").click(function(){
		ischeck = true;
		var $gz_bianhao= $("input[name='gz_bianhao']");	
		var $w_id = $("input[name='w_id']");
		var $gz_qk = $("input[name='gz_qk']");
		var $gz_nb = $("input[name='gz_nb']");
		$("#formreg div").text("");
	if(ischeck){
		 checkNull($gz_bianhao);
		}
		if(ischeck){
		 checkNull($gz_qk);
		}
		if(ischeck){
		 checkNull($gz_nb);
		}
		/*
		if(ischeck){
			checkisDig($age.val(),$age);//年龄是否正确
	    }
	if(ischeck){//检查用户名是否过长
			checkUnamelen($o_xm);
		}
		//检查电话是否周正确
		if(ischeck){
			checkisPhone($o_lxfs);
		}
		*/
	/*	if(ischeck){//检查是否为中文
			//checkisCN($uname.val());
		}
	//检查电话是否周正确
		if(ischeck){
			checkisPhone($phone);
		}
		
	*/	
	if(ischeck){
	$("#formreg").submit();
	}
	});
});
//定义一个方法用于判断input元素是否为空并给出相应的提示
function checkNull($node){
	 var nodeval = $node.val();
	 var altval = $node.attr("alt");
	 if(nodeval.trim().length == 0||nodeval.trim()==""){
		 ischeck = false;
		 $node.focus();
		 //alert(altval+"不能为空");
		 $node.next().text(altval+"不能为空");
	 }
 }

 function checkUnamelen($node){
	 var len = $node.val().trim().length;
	 if(len <= 2 ||len>=6){
		 //alert("用户名长度不正确，应该在3-5个字");
		 $node.next().text("用户名长度不正确，应该在3-5个字");
		 ischeck = false;
		 }
 }
 //检查用户名是否为中文
 /*function checkisCN(uname){
	 var patrn =  /^[A-Z u4E00-u9FA5]+$/ ;
	 if(!patrn.exec(uname)){
		 alert("请填写中文用户名");
		 ischeck = false; 
	 }
	 //正则表达式，用于检验字符串是否符合规范
	 //以/为开头结尾，[]取值范围,{}重复的次数
 }
 */
 //检查年龄
 function checkisDig(val,$node){
	 var len  = val.length;
	 var patrn;
	 if(len >=2&&len < 3){
	   patrn = /[1-9][0-9]/;
	 }else {
	   patrn = /1[0-2][0-9]/;
	 }
	 if(!patrn.exec(val)){
		// alert("请填写正确的年龄");
		$node.next().text("请填写正确的年龄");
		 ischeck = false;
	 }
	 }

  //电话号码
  function checkisPhone($node){
	 var patrn =  /1[3|8]\d{9}/ ;
var nodeval = $node.val();
	 if(nodeval.length!=11||!patrn.exec(nodeval)){
		// alert("请填写正确电话号码");
$node.next().text("请填写正确电话号码");
		 ischeck = false; 
	 }
 }

</script>
	<style type="text/css">  
#formdiv{width:600px;text-align:left;margin-left:auto;margin-right:auto; margin-top:auto; margin-bottom:auto;}
 #formreg{width:360px; margin-left:auto;margin-right:auto; margin-top:auto; margin-bottom:auto; }
 #formreg div{color:red;float:right;text-align:center;}
</style>
  </head>
  
  <body>
    <div align="center"><font size="14">工作人员信息修改 </font></div><br />
  <div class="widget">
                <div class="widget-head" >
                  <div align="center" class="pull-left">请认真填写：</div>
                  <div class="widget-icons pull-right">
                    <a href="main.jsp" class="wminimize"><i class="icon-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="icon-remove"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>

                  <div class="widget-content" align="center" id="formdiv">
          
<form action="GzryS?option=processUpdate" method="post" id="formreg">
 员工编号： <input type="text" size="30" name="gz_bianhao" alt="业主编号" value="${gzry.gz_bianhao }"   readonly="readonly"><div></div><br/>
 物管编号：  
   <select name="w_id" width="20px" >
		<c:forEach var="wgxx" items="${wgxxs}" >
		<option value=${wgxx.w_id } >${wgxx.w_xm}</option> 
		</c:forEach></select>
 <div></div><br/><br/>
 在职状态：  <input type="text" size="30" name="gz_qk" alt="业主年龄" value="${gzry.gz_qk }"><div></div><br/>
 工作时间：  <input type="text" size="30" name="gz_nb" id="popupDatepicker" alt="业主住址" value="${gzry.gz_nb}"><div></div><br/>
				<button type="button" class="btn btn-danger" id="regbtn">修改</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="reset" class="btn btn-default">清除</button>
     </form>
     </div>
     </div>
  </body>
</html>
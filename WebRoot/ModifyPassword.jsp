.<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javascript">
		function check(){
			var loginName = document.getElementById("loginName");
			var loginPwd = document.getElementById("loginPwd");
			if(loginName.value == ""){
				alert("用户名不能为空！请重新填入！");
				loginName.focus();	
				return false;
			}else if(loginPwd.value == ""){
				alert("密码不能为空！请重新填入！");
				loginPwd.focus();
				return false;
			}
			return true;
		}
		
		function focusOnLogin(){
			var loginPwd = document.getElementById("loginPwd");
			if( loginPwd != null )
				loginPwd.focus();	
		}
	</script>

    <link href="html/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="html/css/simple-line-icons.css">
    <link href="html/css/fancybox/jquery.fancybox.css" rel="stylesheet"> 
    <link href="html/css/flexslider.css" rel="stylesheet" /> 
    <link href="html/css/style.css" rel="stylesheet" />
  </head>


  <body>
	
  	<div id="wrapper" class="home-page">
  		<jsp:include page="html/Top.jsp" />
  	 	<header>
  		 	   <img src="html/img/background.png" style="width:100%; height:150px;" />
  		 </header>
  		
  		
		<div class="container">
			<div class="row  text-center"> <h2>注册</h2></div>
			<div class="row  text-center"> 
				 
				   <div class="col-md-12">
				   		<form action="Login" method="post" onsubmit="return check()">
				   		
				   			
				   			<div class="form-group ">
				   				<ul class="nav nav-pills nav-stacked">
				   					<li class="item username status-box " style="height:80px">
				   						<input type="text" id="loginName" value placeholder="你的账号" name="user.user" value="" class="form-control" />
				   					</li>
				   					<li class="item password status-box" style="height:100px">
				   						<input type="password" id="loginPwd"  value placeholder="密&#160;&#160;码 " value="" class="form-control" /></br>
							
				   					</li>
				   					<li class="item password status-box" style="height:100px">
				   						<input type="password" id="loginPwd"  value placeholder="确认密码 " name="user.password" value="" class="form-control" /></br>
							
				   					</li>
				   					<li class="item gc clearfix " style="height:80px">
				   							<input type="submit" class="btn btn-default pull-left" style="width:200px;" value="确认" />
				   							 <button type="submit" class="btn btn-default pull-left" style="width:200px;">取消</button>
				   					</li>
				   					<li class="rememer">
				   					
				   					
				   				</ul>
				   			</div>
				   			<!-- 登陆表单 -->
				 
						</form>
							<!-- 登陆表单 -->
				
      			</div>
			</div>
		</div>
		
  	</div>
  	  
	<script src="html/js/jquery.js"></script>
	<script src="html/js/jquery.easing.1.3.js"></script>
	<script src="html/js/bootstrap.min.js"></script>
	<script src="html/js/jquery.fancybox.pack.js"></script>
	<script src="html/js/jquery.fancybox-media.js"></script> 
	<script src="html/js/portfolio/jquery.quicksand.js"></script>
	<script src="html/js/portfolio/setting.js"></script>
	<script src="html/js/jquery.flexslider.js"></script>
	<script src="html/js/animate.js"></script>
	<script src="html/js/custom.js"></script> 
  </body>
</html>

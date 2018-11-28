<!--<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
 <s:action name="index" executeResult="false" namespace="/"></s:action>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">-->
<html>
  <head>
    <base href="MoiveinfoAction">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <title>无标题文档</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/simple-line-icons.css">
    <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet"> 
    <link href="css/flexslider.css" rel="stylesheet" /> 
    <link href="css/style.css" rel="stylesheet" />
  </head>

     <!--<link href="html/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="html/css/simple-line-icons.css">
    <link href="html/css/fancybox/jquery.fancybox.css" rel="stylesheet"> 
    <link href="html/css/flexslider.css" rel="stylesheet" /> 
    <link href="html/css/style.css" rel="stylesheet" />
	-->
  <body>
	
  	<div id="wrapper" class="home-page">
  		<jsp:include page="Top.jsp" />
  	 	<header>
  		 	   <img src="img/test.jpg" style="width:100%; height:150px;" />
  		 </header>
  		
  		
		<div class="container">
			<div class="row  text-center"> <h2>登陆</h2></div>
			<div class="row  text-center"> 
				  <div class="col-md-6 ">
				  
				         我在左边
				   </div>
				   <div class="col-md-6">
				   			
				   			<!-- 登陆表单 -->
				   		<form action="Login" method="post" onsubmit="return check()">
						    <label>用户名</label>
							<input type="text" id="loginName"  name="user.user" value="" class="login_input" /></br>
							<label> 密&#160;&#160;码 </label>
							<input type="password" id="loginPwd" name="user.password" value="" class="login_input" /></br>
							<input type="submit" class="login_sub" value="登录" />
							<label id="error"> </label>			
						</form>
							<!-- 登陆表单 -->
				         我在右边
      			</div>
			</div>
		</div>
		
  	</div>
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  

 
  </body>
</html>

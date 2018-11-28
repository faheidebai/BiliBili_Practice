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
  		 	   <img src="img/background.png" style="width:100%; height:150px;" />
  		 </header>
  		
  		
		<div class="container">
			<div class="row  text-center"> <h2>登陆</h2></div>
			<div class="row  text-center"> 
				  <div class="col-md-6 ">
				  
				  	<div id="myCarousel" class="carousel slide">
						<!-- 轮播（Carousel）指标 -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>   
						<!-- 轮播（Carousel）项目 -->
						<div class="carousel-inner">
							<div class="item active">
							<img src="img/slides1.jpg" alt="First slide">
							</div>
							<div class="item">
								<img src="img/slides2.jpg"" alt="Second slide">
							</div>
							<div class="item">
								<img src="img/slides3.jpg" alt="Third slide">
							</div>
						</div>
						<!-- 轮播（Carousel）导航 -->
						<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>    
			  		<p class="bg-danger">_______</p>
      
				  			
				  			
			
			
				   </div>
				   <div class="col-md-6">
				   		<form action="Login" method="post" onsubmit="return check()">
				   		
				   			
				   			<div class="form-group ">
				   				<ul class="nav nav-pills nav-stacked">
				   					<li class="item username status-box " style="height:80px">
				   						<input type="text" id="loginName" value placeholder="你的账号" name="user.user" value="" class="form-control" />
				   					</li>
				   					<li class="item password status-box" style="height:100px">
				   						<input type="password" id="loginPwd"  value placeholder="密&#160;&#160;码 " name="user.password" value="" class="form-control" /></br>
							
				   					</li>
				   					<li class="item gc clearfix " style="height:80px">
				   							<input type="submit" class="btn btn-default pull-left" style="width:200px;" value="登录" />
				   							 <button type="submit" class="btn btn-default pull-right" style="width:200px;">取消</button>
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
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  

 
  </body>
</html>

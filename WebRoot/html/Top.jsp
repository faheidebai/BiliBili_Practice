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
    
    <link href="html/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="html/css/simple-line-icons.css">
    <link href="html/css/fancybox/jquery.fancybox.css" rel="stylesheet"> 
    <link href="html/css/flexslider.css" rel="stylesheet" /> 
    <link href="html/css/style.css" rel="stylesheet" />
  </head>

<body>



<div id="wrapper" class="home-page">
    
    <!-- start header -->
	<!---->
    <!--<header>
        <div class="navbar navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"/></a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html">主页</a></li> 
						<li><a href="about.html">音频</a></li>
						<li><a href="services.html">游戏中心</a></li>
                        <li><a href="portfolio.html">直播</a></li>
                        <li><a href="pricing.html">会员购</a></li>
                        <li><a href="contact.html">下载APP</a></li>
                    </ul>
                </div>
            </div>
        </div>
		
		-->
		<div class="navbar-wrapper">
            <div class="container-fluid">
                <nav class="navbar navbar-fixed-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            </button>
                  
                            
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
						
	
                             <ul class="nav nav-pills">
                                  <li><a href="#">主页</a></li>
                                  <li><a href="#">音频</a></li>
                                  <li><a href="#">游戏中心</a></li>
                                  <li><a href="#">直播</a></li>
                                  <li><a href="#">会员购</a></li>
                                  <li><a href="#">下载App</a></li>
                                  
                                  <li class="active pull-right"><a href="#">登陆</a></li>
                                  <li class="pull-right"><a href="#">历史</a></li>
                            </ul>    
                        </div>
                    </div>
                </nav>
            </div>
        </div>
		
	</header>
	<!-- end header -->
 
</div> 
</body>
</html>
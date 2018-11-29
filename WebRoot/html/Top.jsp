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

<body>



<div id="wrapper" class="home-page">
    
    <!-- start header -->
	<!---->
    <!--<header>
    
		
		-->
		<div class="navbar-wrapper" >
            <div class="container-fluid">
                <nav class="navbar navbar-fixed-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar""></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            </button>
                  
                            
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
						
	
                             <ul class="nav nav-pills">
                                  <li><a href="/index.jsp">主页</a></li>
                                  <li><a href="#">音频</a></li>
                                  <li><a href="#">游戏中心</a></li>
                                  <li><a href="#">直播</a></li>
                                  <li><a href="#">会员购</a></li>
                                  <li><a href="#">下载App</a></li>
                                  
                                  <li class="active pull-right"><a href="#">投稿</a></li>
                                  <li class="pull-right"><a href="#">历史</a></li>
                                  <li class=" pull-right"><img src="html/img/users/unlogin.jpg" style="height:40px; width:40px;" href="#"  class="img-circle"></img></li>
                                  
                                  
                            </ul>    
                        </div>
                    </div>
                </nav>
            </div>
        </div>
		

	<!-- end header -->
 
</div> 
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
  </head>

<body>
<div id="wrapper" class="home-page">
	   <div class="container">
	<!-- end header -->
	<!-- Slider -->
   		 
            <ul class="nav navbar-nav"">
			<li class="active"><a href="#">首页</a></li>
			<li><a href="#">番剧</a></li>
            <li><a href="#">动画</a></li>
            <li><a href="#">国创</a></li>
            <li><a href="#">音乐</a></li>
            <li><a href="#">游戏</a></li>
            <li><a href="#">科技</a></li>
            <li><a href="#">生活</a></li>
            <li><a href="#">鬼畜</a></li>
            <li><a href="#">时尚</a></li>
            <li><a href="#">广告</a></li>
            <li><a href="#">娱乐</a></li>
            <li><a href="#">影视</a></li>
            <li><a href="#">放映厅</a></li>
			<li><img src="html/img/daohang.gif"  style="width:50px; height:50px;" /></li>
    
		</ul>
	</div>
	<!-- end slider -->
 
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>


</body>
</html>
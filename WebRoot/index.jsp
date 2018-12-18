<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:action name="index" executeResult="false" namespace="/"></s:action>
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
  		 	   <img src="html/img/test.jpg" style="width:100%; height:150px;" />
  		 </header>
  		 <section id="content">
	  		 <jsp:include page="html/Text.jsp" />
	  	</section>
	  	<section id="content">
	  		 <jsp:include page="html/Slider.jsp" />
	  	</section>
	  	<section id="content">
	  		 <jsp:include page="html/Moive.jsp" />
	  	</section>
	
	
	
	
	
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

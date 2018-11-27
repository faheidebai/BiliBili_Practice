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
  		 <section id="content">
	  		 <jsp:include page="Text.jsp" />
	  	</section>
	  	<section id="content">
	  		 <jsp:include page="Slider.jsp" />
	  	</section>
	  	<section id="content">
	  		 <jsp:include page="Moive.jsp" />
	  	</section>
		
	
  	</div>
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
  	  
    <!-- Slider
    
        <div id="main-slider" class="flexslider">
            <ul class="slides">
              <li>
                <img src="img/slides/1.jpg" alt="" />
					 <div class="container">
					<div class="row">
						<div class="col-lg-12">
                <div class="flex-caption">
                    <h3>Biotechnology</h3> 
					<p>Doloribus omnis minus temporibus perferendis ipsa architecto.</p>  
                </div>
				 </div>
            </div>
        </div>
              </li>
              <li>
                <img src="img/slides/2.jpg" alt="" />
				 <div class="container">
					<div class="row">
						<div class="col-lg-12">
                <div class="flex-caption">
                    <h3>Active Pharma</h3> 
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elitincidunt.</p>  
                </div>
				 </div>
            </div>
        </div>
              </li>
            </ul>
        </div>
		 -->
	<!-- end slider -->
 
  </body>
</html>

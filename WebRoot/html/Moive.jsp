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


   	<div class="container">
	   <div class="row" >
		  <div class="col-xs-2 col-sm-9" >
			 <p>动画</p>
		  </div>
		  <div class="col-xs-2 col-sm-3">
			  <p>动画推荐</p>
		  </div>
	  </div>
	<!--è§é¢é¡µçå¼å§-->
	 <div class="row" >
      <div class="col-xs-6 col-sm-9">
      		
                    <div class="col-xs-6  col-sm-12">
                        
             
                        <div class="col-md-3  text-center">
                            <img src="img/team2.jpg" style="height: 150px; width:auto;" ></img>
                            <h5>Generic API's</h5> <p>Lorem ipsum  </p>
                        </div>
                                
                 </div>
                  <div class="col-xs-6 col-sm-12">
                             
                                
                        <div class="col-md-3  text-center">
                            <img src="img/team2.jpg" style="height: 150px; width:auto;"></img>
                            <h5>Generic API's</h5> <p>Lorem ipsum  </p>
                        </div>
                
                 </div>
                
	
      	</div>
          <div class="col-xs-6 col-sm-3" >
           			<section class="features">
                        <div class="container">
                                
                          
                              <div class="features-item">
                                <div class="features">
                                  <div class="icon">
                                   <i class="icon-map icons"></i>
                                  </div>
                                  <div class="features-content">
                                    <h3>Premium Sliders Included</h3>
                                    <p>Lorem ipsum dlore inventore.</p>
                                  </div>
                                </div>
                                <div class="features">
                                  <div class="icon">
                                    <i class="icon-envelope-open icons"></i>
                                  </div>
                                  <div class="features-content">
                                    <h3>100% Responsive Layout</h3>
                                    <p>Lorem ipsum dolore inventore.</p>
                                  </div>
                                </div>
                               
                              </div>
                          
                        
                        
                        </div>
                 </section>
          </div>
      
       </div>
    </div>
             

	<!--è§é¢é¡µçä»ç»-->
 
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script> 
<script src="js/portfolio/jquery.quicksand.js"></script>
<script src="js/portfolio/setting.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script> 
</body>
</html>
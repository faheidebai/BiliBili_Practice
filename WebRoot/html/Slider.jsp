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

	


 <div class="container">
   <div class="row" >
      
      <div class="col-xs-6 col-sm-5 text-center">
      
      <!-- Slider-->
      

		<div id="myCarousel" class="carousel slide" ">

				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>   
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="html/img/slides1.jpg" alt="First slide">
					</div>
					<div class="item">
						<img src="html/img/slides2.jpg"" alt="Second slide">
					</div>
					<div class="item">
						<img src="html/img/slides3.jpg" alt="Third slide">
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

      <div class="col-xs-6 col-sm-7" >
      			<div class="row" >
	       		   <div class="col-xs-3  col-sm-12">
	                        
	             			
	             			
	             			
	             				<s:iterator value="#request.MoiveInfoList">
			
									<s:iterator id="moiveInfoList" value="top" status="st">
						  				<s:if test="#moiveInfoList.topics.id==0">
						  			
						  					<s:if test="#st.count<5">
						  					
						  					  	<div class="col-md-3  text-center">
						                           <img src="html/img/slides2.jpg"   href="video?movienInfos.id=${moiveInfoList.id}" style="height: 75px; width:auto;" ></img>
						                           
						                      		<a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.titile}</a>
						                      	
						                       </div>
						                      
											</s:if>
						  					<!--  <a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.image}</a>-->
						  				</s:if>
						  			
						  				
						  			</s:iterator>
						    	</s:iterator>
	             			
	             			
	             			
	             			
	                     
	                            
	              	</div>
              	</div>
              		<div class="row" >
	       		   <div class="col-xs-3  col-sm-12">
	                        
	             
	             			<s:iterator value="#request.MoiveInfoList">
			
									<s:iterator id="moiveInfoList" value="top" status="st">
						  				<s:if test="#moiveInfoList.topics.id==0">
						  			
						  					<s:if test="#st.count>=5">
						  					
						  					  	<div class="col-md-3  text-center">
						                           <img src="html/img/slides2.jpg"   href="video?movienInfos.id=${moiveInfoList.id}" style="height: 75px; width:auto;" ></img>
						                           
						                      		<a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.titile}</a>
						                      	
						                       </div>
						                      
											</s:if>
						  					<!--  <a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.image}</a>-->
						  				</s:if>
						  			
						  				
						  			</s:iterator>
						    	</s:iterator>
	             
	             		
	             			
	                    
	                       
	                            
	              	</div>
              	</div>
         </p>
      </div>
  
   </div>

 
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
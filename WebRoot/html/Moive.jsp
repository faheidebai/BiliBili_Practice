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


<s:iterator id="topicList" value="#request.TopicList" status="st">
  	
	<s:if test="#st.index%2==1">
	
  	<div class="container">
	   <div class="row" >
		  <div class="col-xs-2 col-sm-9" >
		  	<s:if test="#topicList.id%2==1">
  			 	<p>${topicList.topicName}</p>
  			</s:if>
		  </div>
		  <div class="col-xs-2 col-sm-3">
			 
  			 	<p>${topicList.topicName}推荐</p>
  		
		  </div>
	  </div>
	 </s:if>
	<!--è§é¢é¡µçå¼å§-->
	<s:if test="#st.index%2==1">
	 <div class="row" >
	 	
	  <!-- ------------------------------------------------ -->
      <div class="col-xs-6 col-sm-9">
      		
                  <div class="col-xs-6  col-sm-12">
                        
             		
             			<s:iterator value="#request.MoiveInfoList">
             				<s:iterator id="moiveInfoList" value="top" status="st">
						  				<s:if test="#topicList.id==#moiveInfoList.topics.id">
						  			
						  					<s:if test="#st.count<10"> 
						  						
						  					  	<div class="col-md-3  text-center">
						                           <img src="img/slides2.jpg"   href="video?movienInfos.id=${moiveInfoList.id}" style="height: 75px; width:auto;" ></img>
						                           
						                      		<a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.titile}</a>
						                      	
						                       </div>
						                      
											</s:if>
						  					<!--  <a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.image}</a>-->
						  				</s:if>
						  			
						  				
						  			</s:iterator>
             			
             			
             			</s:iterator>
             			
             			
                      
                      

                                
                 </div>
              
                
	
      	</div>
      	</s:if>
      	<s:if test="#st.index%2==1">
    	 <!-此处有bug  因为游戏 和游戏推荐是分开来的，如果你通过itractor辨识topicid来写，那么就会使界面变形-->	
      <!-- ------------------------------------------------ -->
          <div class="col-xs-6 col-sm-3" >
           			   <div class="features-item">
                        	<s:iterator value="#request.MoiveInfoList">
             				<s:iterator id="moiveInfoList" value="top" status="st">
						  				<s:if test="#topicList.id==#moiveInfoList.topics.id">
						  			
						  					<s:if test="#st.count<10"> 
						  						
						  						    
							                                <div class="features">
							                                 
							                                  <div class="features-content">
							                              
							                                    <a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.titile}</a>
							                                  </div>
							                                </div>
							                           
							                             
						  						
						  	
						                      
											</s:if>
						  					<!--  <a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.image}</a>-->
						  				</s:if>
						  			
						  				
						  			</s:iterator>
             			
             			
             			</s:iterator>
             			</div>
      	<!--  
                              <div class="features-item">
                                <div class="features">
                                 
                                  <div class="features-content">
                              
                                    <p>inventore.</p>
                                  </div>
                                </div>
                                <div class="features">
                                
                                  <div class="features-content">
                                
                                    <p> inventore.</p>
                                  </div>
                                </div>
                               
                              </div>
                        -->         
             
          </div>
          </s:if>
           <!-- ------------------------------------------------ -->
       
      
       
    </div>
   
      
    </div>
             
	
	<!--è§é¢é¡µçä»ç»-->
	
</s:iterator>
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
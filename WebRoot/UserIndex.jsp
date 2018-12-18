<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserIndex.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	   <link href="html/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="html/css/simple-line-icons.css">
    <link href="html/css/fancybox/jquery.fancybox.css" rel="stylesheet"> 
    <link href="html/css/flexslider.css" rel="stylesheet" /> 
    <link href="html/css/style.css" rel="stylesheet" />

  </head>
  
  <body>
 	<jsp:include page="html/Top.jsp" />
  	<div id="wrapper" class="home-page">
     <div class="container">
   <img src="html/img/slides/2.jpg" style="width:1100px;" />
				 <div class="container">
					<div class="row">
						<div class="col-lg-12">
                <div class="flex-caption">
                
                	
			  	
                 	  <div class="media">
				    <div class="media-left media-middle">
				      <img src="html/img/users/unlogin.jpg" class="media-object img-circle" style="width:60px">
				    </div>
				    <div class="media-body">
				      <h4 class="media-heading text-danger"><strong>${session.LoginUserInfo.userName}</strong></h4>
				      	<p> 	${session.LoginUserInfo.avatar}	
			  	    	${session.LoginUserInfo.personality}</p>
						
								
				       </div>
				  </div>
				
                </div>
				 </div>
            </div>
        </div>
       </div>
       
       
        <div class="container">
        
			       <div class="tabbable" id="tabs-406063">
									<ul class="nav nav-tabs">
										<li class="active">
											 <a href="#panel-1" data-toggle="tab">主页</a>
										</li>
										<li >
											 <a href="#panel-2" data-toggle="tab">动态</a>
										</li>
										<li >
											 <a href="#panel-3" data-toggle="tab">投稿</a>
										</li>
										<li >
											 <a href="#panel-4" data-toggle="tab">评到</a>
										</li>
										<li >
											 <a href="#panel-5" data-toggle="tab">频道</a>
										</li>
										
										<li >
											 <a href="#panel-6" data-toggle="tab">收藏夹</a>
										</li>
										<li >
											 <a href="#panel-7" data-toggle="tab">订阅</a>
										</li>
										<li >
											 <a href="#panel-8" data-toggle="tab">设置</a>
										</li>
									</ul>
									
											<div class="tab-content">
												<div class="tab-pane active" id="panel-1">
													<p>
																	
																	
																	
																	<div class="container">
																			<div class="row clearfix">
																				<div class="col-md-12 column">
																					<dl>
																						<dt>
																							Description lists
																						</dt>
																						<dd>
																							A description list is perfect for defining terms.
																						</dd>
																						<dt>
																							Euismod
																						</dt>
																						<dd>
																							Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.
																						</dd>
																						<dd>
																							Donec id elit non mi porta gravida at eget metus.
																						</dd>
																						<dt>
																							Malesuada porta
																						</dt>
																						<dd>
																							Etiam porta sem malesuada magna mollis euismod.
																						</dd>
																						<dt>
																							Felis euismod semper eget lacinia
																						</dt>
																						<dd>
																							Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
																						</dd>
																					</dl>
																					<grammarly>
																						<div class="_1BN1N Kzi1t BD-0J _7_mnr _2DJZN">
																							<div class="_1HjH7">
																								<div class="_3qe6h">
																								</div>
																							</div>
																						</div>
																					</grammarly>
																				</div>
																			</div>
																		</div>
													</p>
												</div>
												<div class="tab-pane" id="panel-2">
												<br>
													 <div class="container">
													 		<p></p>
													 		<p></p>
													 		
															 <div class="row">
																  	<s:iterator id="moiveInfoList" value="#request.MoiveList" status="st">	
																  		<s:if test="#st.count<5">
																  		<div class="col-md-3  ">
												                           <img src="html/img/slides2.jpg"   href="video?movienInfos.id=${moiveInfoList.id}" style=" width:200px;" ></img>
						                     
  				
																			<div style="overflow: hidden;
																			  text-overflow:ellipsis;
																			  display: -webkit-box;
																			  -webkit-box-orient: vertical;
																			  -webkit-line-clamp: 2;
																			  width:200px;"><a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.titile}</a>
																		  	</div>
												                      	
												                       </div>
												                       </s:if>
																		<!--  
																		<a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.titile}</a>
																		<a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.image}</a>		
																  		-->
																  	</s:iterator>	
																 </div>	
				  											</div>
												
												</div>
										
									</div>
					</div>
		</div>
  	</div>
 	
 	 	
 

  	<s:if test="#session.LoginUserInfo == null">
  	 	<%  response.sendRedirect("Login.jsp"); %>
  
  	</s:if>
  	<s:else>
  	 
  	</s:else>

  
  
  	
  	
	

 	<s:if test="#request.moiveList != null">
 	 test
 	</s:if>
 	
		 <div class="container">
		   				
			
		
						
									
						
				
  			
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

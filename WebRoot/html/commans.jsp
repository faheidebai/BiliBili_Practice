<%@ page language="java" import="java.util.* " pageEncoding="utf-8"%>
<%@ page import="com.bilibili.entity.Users" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'video.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function check(){
			var content = document.getElementById("content");	
				
			var seessionUser="<%=session.getAttribute("LoginUserInfo")%>"; 
  
			if(seessionUser=="null"||seessionUser==""){
				alert("请先登陆");
				window.location.replace("Login.jsp") 
				return false;
			}
		 	if(content.value == ""){
				alert("内容不能为空！！");
				content.focus();
				return false;
			}
			return true;
			
			
		}
	</script>
  </head>
  
  <body>
  
		
	
  	<!--  没用的主页
	<a href="index.jsp">主页</a>
		
		<s:if test="#session.LoginUserInfo != null">
			<a href="UserIndex.jsp">${session.LoginUserInfo.userName}</a>
			<a href="logout.jsp">退出</a>
		</s:if>
		<s:if test="#session.LoginUserInfo == null">
			<a href="Login.jsp">登陆</a>
		</s:if>
		
  	
  	
  		${MoiveInfo}
  	 -->
  		<!--  ${Author.user} -->
				<div class="container">
					  <div class="media">
					 	${MoiveInfo.moive}
					 		<br><br>
					    <div class="media-body">
					      <h3 class="media-heading">${MoiveInfo.titile}</h3>
					      <p>35.1万播放 · 5970弹幕 · 2018-12-16 23:21:54影视影视杂谈</p>
					       </div>
					  </div>
			  </div>
			<!--作者-->
			<br>
			<div class="container">
				
			
			  <div class="media">
			    <div class="media-left media-top">
			      <img src="http://static.runoob.com/images/mix/img_avatar.png" class="media-object img-circle" style="width:50px">
			    </div>
			    <div class="media-body">
			      <h4 class="media-heading text-danger">${MoiveInfo.userinfo.userName}</h4>
			      
			      <p>${MoiveInfo.userinfo.personality}</p>
			    </div>
			  </div>
			  <hr>
			
			</div>
			<!--作者-->
			
		
			<div class="container"> <h2 class="text-primary">全部评价</h2></div>
		
		
			<!-- 评论提交 -->
			<div class="container">
			 
			  <div class="media">
			    <div class="media-left  media-middle">
			      <img src="html/img/users/unlogin.jpg" class="media-object img-circle" style="width:50px">
			    </div>
			    <div class="media-body">
			    	
			    		<!-- 评论提交 -->
				    	 <s:form  class="form-horizontal" role="form" action="addComment" method="post" onsubmit="return check()">
								<s:hidden name="addComment.users.id" value="%{#session.LoginUserInfo.id}" />
								<s:hidden name="addComment.moiveId" value="%{#request.MoiveInfo.id}" /> 
								
						
								
									<div class="col-sm-11">
								        <input type="text" class="form-control" style="width:830px; height:60px;" name="addComment.content"  id="content" placeholder="内容">
							       	</div>
						        	 <div class="col-sm-1">
						           		 <button type="submit" class="btn btn-default" style="width:60px; height:60px;">评论</button> 
						            </div>
						      
						    </s:form>
					   	<!-- 评论提交 -->
			    </div>
			  </div>
			  <hr>
			
			</div>
	
			<!-- 评论提交 -->
  	
			
			
		
		

		
		
			<!--评论区-->
			<s:iterator id="comments" value="#request.CommentsList">
		
				<div class="container">
				 
				  <div class="media">
				    <div class="media-left media-top">
				      <img src="http://static.runoob.com/images/mix/img_avatar.png" class="media-object img-circle" style="width:50px">
				    </div>
				    <div class="media-body">
				      <h5 class="media-heading">发黑的白</h5>
				      	<p>${comments.content}
				
				      	<s:if test="#session.LoginUserInfo">
				      			
								<s:if test="#session.LoginUserInfo.userId==#comments.users.id">
										<a href="deleteComment?deleteComment.id=${requestScope.comments.id}">删除</a>
									</s:if>
						</s:if>
						</p>
								
				       </div>
				  </div>
				  <hr>
				
				</div>
			</s:iterator>
		<!--评论区-->
  	
		
  		
				</br>
			
				
  			<!-- 评论 -->
			
			
				
				
  		
  	
  
  </body>
</html>

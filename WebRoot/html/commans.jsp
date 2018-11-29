<!--<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
  
		
	
  	<!--  没用的主页
	<a href="index.jsp">主页</a>
		
		<s:if test="#session.LoginUserInfo != null">
			<a href="UserIndex.jsp">${session.LoginUserInfo.userName}</a>
			<a href="logout.jsp">退出</a>
		</s:if>
		<s:if test="#session.LoginUserInfo == null">
			<a href="Login.jsp">登陆</a>
		</s:if>
		
  		${MoiveInfo.moive}
  		${MoiveInfo.titile}
  		${MoiveInfo.users.user}
  	 -->
  		<!--  ${Author.user} -->
 
		
			<!--作者-->
			<div class="container">
			  <h2>多媒体对象</h2>
			  <p>多媒体对象可以设置头部、居中、底部对齐，对应的类分别是 "media-top"、 "media-middle" 、 "media-bottom":</p><br>
			  <div class="media">
			    <div class="media-left media-top">
			      <img src="http://static.runoob.com/images/mix/img_avatar.png" class="media-object img-circle" style="width:60px">
			    </div>
			    <div class="media-body">
			      <h4 class="media-heading text-danger">发黑的白</h4>
			      <p>这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。</p>
			    </div>
			  </div>
			  <hr>
			
			</div>
			<!--作者-->
			
		
		
			<!-- 评论提交 -->
			<div class="container">
			 
			  <div class="media">
			    <div class="media-left  media-middle">
			      <img src="html/img/users/unlogin.jpg" class="media-object img-circle" style="width:60px">
			    </div>
			    <div class="media-body">
			    		<!-- 评论提交 -->
				    	 <s:form  class="form-horizontal" role="form" action="addComment" method="post" onsubmit="return check()">
							<s:hidden name="addComment.users.id" value="%{#session.User.id}" />
							<s:hidden name="addComment.moiveId" value="%{#request.MoiveInfo.id}" /> 
							
							<div class="form-group">
							
								<div class="col-sm-10">
							        <input type="text" class="form-control" name="addComment.content"  id="content" placeholder="内容">
						       	</div>
					        	 <div class="col-sm-2">
					           		 <button type="submit" class="btn btn-default">登录</button> 
					            </div>
							</div>
							
							
						   
						    </s:form>
					   	<!-- 评论提交 -->
			    </div>
			  </div>
			  <hr>
			
			</div>
		<!-- 评论提交 -->
		
  			<!-- 评论提交 -->
			
				<!--评论区-->
			<div class="container">
			 
			  <div class="media">
			    <div class="media-left media-top">
			      <img src="http://static.runoob.com/images/mix/img_avatar.png" class="media-object img-circle" style="width:60px">
			    </div>
			    <div class="media-body">
			      <h4 class="media-heading text-danger">发黑的白</h4>
			      <p>这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。这是一些示例文本。</p>
			       </div>
			  </div>
			  <hr>
			
			</div>
		<!--评论区-->
		
		
		
		
		
		
		
		
  	
		
  			<s:iterator id="comments" value="#request.CommentsList">
				</br>
				${comments.id}	
				
				
			<!-- 评论提交 -->
		   <s:if test="#session.User"></s:if>
		
		    <s:form action="addComment" method="post" onsubmit="return check()">
			<s:hidden name="addComment.users.id" value="%{#session.User.id}" />
			<s:hidden name="addComment.moiveId" value="%{#request.MoiveInfo.id}" /> 
		       <s:textarea label="内容" name="addComment.content" cols="70" rows="10" id="content">
		        </s:textarea>
		     <p>
		         <s:submit value="提交" />  
		      </p> 
		    </s:form>
		
  		<!-- 评论提交 -->
  				
  			<!-- 评论 -->
				${comments.users.user}
				${comments.content}
				
				<s:if test="#session.User">
					<s:if test="#session.User.id==#comments.users.id">
							<a href="deleteComment?deleteComment.id=${requestScope.comments.id }">删除</a>
					</s:if>
				</s:if>
  			</s:iterator>
  	
  
  </body>
</html>

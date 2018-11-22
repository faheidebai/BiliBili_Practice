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
				
			var seessionUser="<%=session.getAttribute("User")%>"; 
  
			
		 	if(content.value == ""){
				alert("内容不能为空！！");
				content.focus();
				return false;
			}
			
			if(seessionUser=="null"||seessionUser==""){
				alert("请先登陆");
				window.location.replace("Login.jsp") 
				return false;
			}
			return true;
			
			
		}
	</script>
  </head>
  
  <body>

		
  		${MoiveInfo.moive}
  		${MoiveInfo.titile}
  		${MoiveInfo.users.user}
  		
  		
  		<!--  ${Author.user} -->
 

  			
  			
  			
  			
  		
  		
  		
  		
  	
			<!-- 评论提交 -->
		   <s:if test="#session.User"></s:if>
		   <s:else>null</s:else>
		    <s:form action="addComment" method="post" onsubmit="return check()">
			<s:hidden name="addComment.users.id" value="#session.User.id" />
			<s:hidden name="addComment.moiveId" value="#MoiveInfo.id" /> 
		       <s:textarea label="内容" name="addComment.content" cols="70" rows="10" id="content">
		        </s:textarea>
		     <p>
		         <s:submit value="提交" />  
		      </p> 
		    </s:form>
		
  
  				
  			<!-- 评论 -->
  			<s:iterator id="comments" value="#request.CommentsList">
				</br>
				${comments.id}
				${comments.users.user}
				${comments.content}
			
  			</s:iterator>
  </body>
</html>

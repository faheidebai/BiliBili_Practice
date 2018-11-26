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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<a href="index.jsp">主页</a>
  	<s:if test="#session.LoginUserInfo != null">
  		${session.LoginUserInfo.userName}
  		${session.LoginUserInfo.avatar}
  		${session.LoginUserInfo.personality}
  	</s:if>
  	<s:else>
  	   <%  response.sendRedirect("Login.jsp"); %>
  	</s:else>
  	
  
  	<a href="getMoiveByUser?getUserId.id=${session.LoginUserInfo.users.id}">查看发布视频</a>
  	
  	
	
  	<s:iterator id="moiveInfoList" value="#request.MoiveList">	
		<a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.titile}</a>
		<a href="video?movienInfos.id=${moiveInfoList.id}">${moiveInfoList.image}</a>		
  	</s:iterator>		
  			
 	<s:if test="#request.moiveList != null">
 	 test
 	</s:if>
   	
  		
  </body>
  
</html>

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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>

  	<s:iterator id="topicList" value="#request.TopicList">
  		
  		<s:if test="#topicList.id%2==1">
  			</br>
  		</s:if>
  		${topicList.topicName}
		<s:iterator value="#request.MoiveInfoList">
			
			<s:iterator id="moiveInfoList" value="top">
  				<s:if test="#topicList.id==#moiveInfoList.topics.id">
  					<a href="video">${moiveInfoList.titile}</a>
  					<a href="video?Moiveinfos=${moiveInfoList}">${moiveInfoList.image}</a>
  				</s:if>
  			
  				
  			</s:iterator>
    	</s:iterator>
    	
    </s:iterator>


  


   
  </body>
</html>
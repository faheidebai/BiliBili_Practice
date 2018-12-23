<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:action name="getTopicName" executeResult="false" namespace="/"></s:action>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link href="html/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="html/css/simple-line-icons.css">
    <link href="html/css/fancybox/jquery.fancybox.css" rel="stylesheet"> 
    <link href="html/css/flexslider.css" rel="stylesheet" /> 
    <link href="html/css/style.css" rel="stylesheet" />
  </head>
  
	  <body>
	    	<div id="wrapper" class="home-page">
  		<jsp:include page="html/Top.jsp" />
  		
  			<header>
  		 	   <img src="html/img/test.jpg" style="width:100%; height:150px;" />
  		 </header>
  		 <br/><br/>
	  <div class="container">
		<form class="form-horizontal" role="form" action="addMoiveInfos" method="post" onsubmit="return check()">
		<hidden name="movienInfos.userinfo.id" value="1" />
 		<hidden name="movienInfos.topicId" value="1" />
 		
 		 <div class="form-group">
			<label for="firstname" class="col-sm-2 control-label">主题</label>
			<div class="col-sm-10">
				 <s:select name="movienInfos.topicId" list="#request.topicList" listKey="id" class="form-control" listValue="topicName" />
			</div>
		</div>
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label">标题</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="firstname"  name="movienInfos.titile"
					   placeholder="请输入标题">
			</div>
		</div>
		
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">地址</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="lastname"  name="movienInfos.moive" 
					   placeholder="请输入地址">
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">图片文件输入</label>
			<div class="col-sm-10">
				<input type="file" id="inputfile" name="movienInfos.image">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">登录</button>
			</div>
		</div>
	</form>
	</div>
    		</div>	
  </body>
</html>

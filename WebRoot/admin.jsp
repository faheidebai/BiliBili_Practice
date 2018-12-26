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
    
    <title>My JSP 'test.jsp' starting page</title>
    
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
	
	<div class="row">

	<br>
	<br>
	
  <table class="table table-striped"> 
 			 <tr>
				<th>标题</th>
				<th>作者</th>
				<th>修改</th>
				<th>删除</th>
				
			</tr>
    <s:iterator id="movienInfo" value="#request.movienInfoList">
    	 	<tr>
				<th>${movienInfo.id}${movienInfo.titile}</th>
				<th>作者:${movienInfo.userinfo.userName}</th>
				<th><a href='toModify?movienInfos.id=${movienInfo.id}' onclick='return clickdel()'>修改</a></th>
				<th><a href='deleteNews?movienInfos.id=${movienInfo.id}' onclick='return clickdel()'>删除</a></th>
			</tr>
    	 	
    	 	<tr> </tr>
    	 	<!--  <a href='toModifyNews?movienInfos.id=${movienInfo.id}'>修改</a> &#160;&#160;&#160;&#160; -->
    	 
    	 	
    	 	</td>
    	 	
         
     </s:iterator>

    </table>
    </div>
	<div class="row">
            <p align="center">
           

	
	<s:if test="pager.curPage>1">


	 </s:if> 
			<a href="admin?pager.curPage=1">首页</a>
			<a href="admin?pager.curPage=${pager.curPage-1}">上一页</a>
			<a href="admin?pager.curPage=${pager.curPage+1}">下一页</a>
			
	<s:if test="pager.curPage<pager.pageCount">
			
	  </s:if>
	   </div>
	</div>
		
	</div>
  </body>
</html>

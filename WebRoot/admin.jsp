<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:action name="admin" executeResult="false" namespace="/"></s:action>
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

  </head>
  
  <body>

  <ul class="classlist"> 
    <s:iterator id="news" value="#request.newsinfoList">
    	 	<li>${news.titile}
    	 
    	 	<a href='toModifyNews?newsinfo.id=${news.id}'>修改</a> &#160;&#160;&#160;&#160; 
    	 	<a href='deleteNews?newsinfo.id=${news.id}' onclick='return clickdel()'>删除</a> 
    	 	</span> 
    	 	</li>
         
     </s:iterator>
    首页
            <p align="center">
           

	
	<s:if test="pager.curPage>1">
	<a href="admin?pager.curPage=1">首页</a>
		<a href="admin?pager.curPage=${pager.curPage-1}">上一页</a>

	 </s:if> 
		
	<s:if test="pager.curPage<pager.pageCount">
				<a href="admin?pager.curPage=${pager.curPage+1}&movienInfos.topicId=${requestScope.movienInfos.topicId}&movienInfos.titile=${requestScope.movienInfos.titile}">下一页</a>
<a href="admin?pager.curPage=${pager.pageCount}&movienInfos.topicId=${requestScope.movienInfos.topicId}&movienInfos.titile=${requestScope.movienInfos.titile}">尾页</a>
	  </s:if>
	    </p>
		
		
    </ul>
  </body>
</html>

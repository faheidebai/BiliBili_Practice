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
    
    <title>My JSP 'Login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javascript">
		function check(){
			var loginName = document.getElementById("loginName");
			var loginPwd = document.getElementById("loginPwd");
			if(loginName.value == ""){
				alert("用户名不能为空！请重新填入！");
				loginName.focus();	
				return false;
			}else if(loginPwd.value == ""){
				alert("密码不能为空！请重新填入！");
				loginPwd.focus();
				return false;
			}
			return true;
		}
		
		function focusOnLogin(){
			var loginPwd = document.getElementById("loginPwd");
			if( loginPwd != null )
				loginPwd.focus();	
		}
	</script>
  </head>
  
  <body>
 
  
 	 <a href="index.jsp">主页</a>
  		<s:if test="#session.User != null">
  		   <% response.sendRedirect("index"); %>
  		</s:if>
    	<form action="Login" method="post" onsubmit="return check()">
		    <label>用户名</label>
			<input type="text" id="loginName"  name="user.user" value="" class="login_input" />
			<label> 密&#160;&#160;码 </label>
			<input type="password" id="loginPwd" name="user.password" value="" class="login_input" />
			<input type="submit" class="login_sub" value="登录" />
			<label id="error"> </label>			
		</form>
	
  </body>
</html>

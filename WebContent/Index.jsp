<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*" %>
<% String context = request.getContextPath();
   out.println(context);
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="assets/css/upright.css">
        <link rel="stylesheet" type="text/css" href="assets/css/navbar.css">
    </head>
<body>
<div>
	  <div class="navbar">
	  	<ul>
	      <li><a href="/TravelWeb/Index.jsp" title="首页" target="_blank">首页</a></li>
	      <li><a href="/TravelWeb/SelfInfo.jsp" title="个人信息" target="_blank">个人信息</a></li>
	    </ul>
	    <div id="u">
	    	<%if(session.getAttribute("username")==null)
	  			out.println("<a href=\"/TravelWeb/Login.jsp\">登录</a> <a href=\"/TravelWeb/Register.jsp\">注册</a>");
	  		else{
	  			out.println(session.getAttribute("username")+"<a href=\"/TravelWeb/Logout\">退出</a>");
	  		}%>
	  	</div>
	  </div>
	<form action="/TravelWeb/Search" method="post" >
		<input  type="keywords" name="keywords" style="border-radius: 5px;width:60%;height:34px;">
		<button type="submit" class="login-btn register-btn" id="button" style="color:#fff;border: 0;box-shadow:none;border-radius: 5px;background: #0f88eb;cursor: pointer;display:inline-block;width:10%;height:40px;">搜索</button>
	</form>
</div>
</body>
</html>
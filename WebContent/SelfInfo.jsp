<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<% String context = request.getContextPath();
   out.println(context);
%>
<%
   // 获取session创建时间
   Date createTime = new Date(session.getCreationTime());
   // 获取最后访问页面的时间
   Date lastAccessTime = new Date(session.getLastAccessedTime());

   String title = "再次访问菜鸟教程实例";
   Integer visitCount = new Integer(0);
   String visitCountKey = new String("visitCount");
   String userNameKey = new String("username");
   String userName = new String("ABCD");

   // 检测网页是否由新的访问用户
   if (session.isNew()){
      session.setAttribute(userNameKey, userName);
      session.setAttribute(visitCountKey,  visitCount);
   } else {
	   visitCount = (Integer)session.getAttribute(visitCountKey);
	   visitCount+=1;
	   userName = (String)session.getAttribute(userNameKey);
	   session.setAttribute(visitCountKey,  visitCount);
   }
%>
<html>
    <head>
        <title></title>
        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="assets/css/upright.css">
        <link rel="stylesheet" type="text/css" href="assets/css/navbar.css">
        <!--style="float: left;width:920px;height:40px;background-image:url(../images/nav.jpg);margin:100px 0 0 0;padding: 0 ;" -->
    </head>
<body>
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
<table border="1" align="center"> 
<tr bgcolor="#949494">
   <th>Session 信息</th>
   <th>值</th>
</tr> 
<tr>
   <td>id</td>
   <td><% out.print(session.getId()); %></td>
</tr> 
<tr>
   <td>创建时间</td>
   <td><% out.print(createTime); %></td>
</tr> 
<tr>
   <td>最后访问时间</td>
   <td><% out.print(lastAccessTime); %></td>
</tr> 
<tr>
   <td>用户 ID</td>
   <td><% out.print(userName); %></td>
</tr> 
<tr>
   <td>访问次数</td>
   <td><% out.print(visitCount); %></td>
</tr> 
</table> 
</body>
</html>
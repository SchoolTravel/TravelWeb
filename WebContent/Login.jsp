<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String context = request.getContextPath();
   out.println(context);
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>注册</title>
	<link rel="stylesheet" type="text/css" href="assets/css/register-login.css">
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
	</div>

	<div class="cont-main clearfix">
		<div class="index-tab">
			<div class="index-slide-nav">
				<a href="Login.jsp" class="active">登录</a>
				<a href="Register.jsp">注册</a>
				<div class="slide-bar"></div>				
			</div>
		</div>
		<form action="Login" method="post">
			<div class="login form">
				<div class="group">
					<div class="group-ipt email">
						<input type="text" name="username" id="email" class="ipt" placeholder="邮箱地址" required>
					</div>
					<div class="group-ipt password">
						<input type="password" name="password" id="password" class="ipt" placeholder="输入您的登录密码" required>
					</div>
				</div>
			</div>


		<div class="button">
			<button type="submit" class="login-btn register-btn" id="button">登录</button>
		</div>
		</form>
		<div class="remember clearfix">

		</div>
	</div>
</div>

<div class="footer">
	<p>登录</p>
	<p>Designed By Gongsisi 2016</p>
</div>
</body>
</html>
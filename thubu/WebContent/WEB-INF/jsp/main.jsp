<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="app.thubu.model.*, java.util.*" %>
<%
	User loginUsr = (User) session.getAttribute("loginUsr");
	List<Mutter> mutterList =
			(List<Mutter>) application.getAttribute("mutterList");
	String errorMsg = (String) request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>つぶやき - メインページ</title>
</head>
<body>
<h1>つぶやきメインページ</h1>
<p><%= loginUsr.getName() %>さん、ログイン中</p>
<a href="/Thubu/Logout">ログアウト</a>
<hr>
<p><a href="/Thubu/Main">更新</a></p>
<form action="/Thubu/Main" method="post">
	<input type="text" name="text">
	<input type="submit" value="つぶやく">
</form>
<% if(errorMsg != null) { %>
<p><%= errorMsg %></p>
<% } %>
<% for(Mutter mutter : mutterList) {%>
<p><%= mutter.getUsr() %> : <%= mutter.getText() %></p>
<% } %>


</body>
</html>
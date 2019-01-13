<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="app.thubu.model.User" %>
<%
	User loginUsr = (User)session.getAttribute("loginUsr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>つぶやき - ログイン結果</title>

</head>
<body>
<h1>ログイン結果</h1>
<% if(loginUsr != null) { %>
	<p>ログイン成功。ようこそ<%= loginUsr.getName() %>さん。</p>
	<a href="/Thubu/Main">つぶやき閲覧・確認</a>
<% } else { %>
	<p>ログイン失敗。トップ画面へ戻ってください。</p>
	<a href="/Thubu">トップへ</a>
<% } %>

</body>
</html>
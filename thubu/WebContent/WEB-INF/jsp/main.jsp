<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>つぶやき - メインページ</title>
</head>
<body>
	<h1>つぶやきメインページ</h1>
	<jsp:include page="/WEB-INF/jsp/include/loginusr-inc.jsp" />
	<a href="/Thubu/Logout">ログアウト</a>
	<hr>
	<p><a href="/Thubu/Main">更新</a></p>
	<form action="/Thubu/Main" method="post">
		<input type="text" name="text">
		<input type="submit" value="つぶやく">
	</form>
	<jsp:include page="/WEB-INF/jsp/include/printMsg-inc.jsp" />
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/login-inc.jsp" %>
<% if(loginUsr != null) { %>
	<p>ログイン成功。<jsp:include page="/WEB-INF/jsp/include/loginusr-inc.jsp" /></p>
	<a href="/Thubu/Main">つぶやき閲覧・確認</a>
<% } else { %>
	<p>ログイン失敗。トップ画面へ戻ってください。</p>
	<a href="/Thubu">トップへ</a>
<% } %>
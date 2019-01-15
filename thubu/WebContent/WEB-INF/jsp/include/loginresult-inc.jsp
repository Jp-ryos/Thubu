<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ not empty loginUsr }">
	<p>ログイン成功。<jsp:include page="/WEB-INF/jsp/include/loginusr-inc.jsp" /></p>
	<a href="/Thubu/Main">つぶやき閲覧・確認</a>
</c:if>
<c:if test="${ empty loginUsr }">
	<p>ログイン失敗。トップ画面へ戻ってください。</p>
	<a href="/Thubu">トップへ</a>
</c:if>
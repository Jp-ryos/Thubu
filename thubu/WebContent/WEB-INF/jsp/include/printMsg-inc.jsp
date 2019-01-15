<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ not empty errorMsg }">
	<p>${ errorMsg }</p>
</c:if>
<c:forEach var="mutter" items="${ mutterList }">
	<p>
		<c:out value="${ mutter.usr }" /> : <c:out value="${ mutter.text }" />
	</p>
</c:forEach>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/mutter-inc.jsp" %>
<% if(errorMsg != null) { %>
<p><%= errorMsg %></p>
<% } %>
<% for(Mutter mutter : mutterList) {%>
<p><%= mutter.getUsr() %> : <%= mutter.getText() %></p>
<% } %>
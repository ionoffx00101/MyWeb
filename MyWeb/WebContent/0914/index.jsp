<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP 샘플</title>
</head>
<body>
<%--스크립트릿 (Scriptlet) --%>
<%="한글로 헬로우 월드" %>
<%
String msg = request.getParameter("msg");
session.setAttribute("id", "myid");
%>
</body>
</html>
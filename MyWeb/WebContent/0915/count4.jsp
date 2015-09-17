<%@page import="java.io.*"%>
<%@ page import="org.kdea.web.counter.CountMgr" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	int cnt = new CountMgr(application).increase();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	count
	<%=cnt%><br>
</body>
</html>
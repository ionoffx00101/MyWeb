<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=EUC-KR>
<title>������ ��� ������(gugu.jsp)</title>
</head>
<body>
<% 
 String gugu= (String)request.getAttribute("gugu");
%>
<%= gugu%>
</body>
</html>
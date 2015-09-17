<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!  
int count=0;
%>	
<%  
application.setAttribute("count", ++count);
%>
<%
	int count = (int) application.getAttribute("count");

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	count
	<%=count%><br>
</body>
</html>
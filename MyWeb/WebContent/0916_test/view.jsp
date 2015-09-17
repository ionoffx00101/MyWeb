<%@page import="java.util.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<% Random rd = new Random();
int num= rd.nextInt(5)+1;
String qstring="q"+num+".txt";
%>
</head>
<body>
<jsp:include page="<%=qstring%>" flush="false" />
</body>
</html>
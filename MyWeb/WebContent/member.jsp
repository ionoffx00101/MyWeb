<%@page import="org.java.servlet.MemVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<!DOCTYPE html >
<html>
<head>
<meta charset=EUC-KR>
<title>��û�� ȸ�� ���� ���(member.jsp)</title>
</head>
<body>

<% 
 MemVO mInfo= (MemVO)request.getAttribute("mInfo");
%>

ȸ����ȣ : <%= mInfo.getmNum() %> <br>
�̸� : <%= mInfo.getmName()%> <br>
E mail : <%= mInfo.geteMail()%> <br>

</body>
</html>
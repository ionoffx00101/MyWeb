<%@page import="org.java.servlet.MemVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<!DOCTYPE html >
<html>
<head>
<meta charset=EUC-KR>
<title>요청된 회원 정보 출력(member.jsp)</title>
</head>
<body>

<% 
 MemVO mInfo= (MemVO)request.getAttribute("mInfo");
%>

회원번호 : <%= mInfo.getmNum() %> <br>
이름 : <%= mInfo.getmName()%> <br>
E mail : <%= mInfo.geteMail()%> <br>

</body>
</html>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP ����</title>
</head>
<body>
<%--��ũ��Ʈ�� (Scriptlet) --%>
<%="�ѱ۷� ��ο� ����" %>
<%
String msg = request.getParameter("msg");
session.setAttribute("id", "myid");
%>
</body>
</html>
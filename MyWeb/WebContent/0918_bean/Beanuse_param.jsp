<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="p" class="org.kdea.web.bean.Product" />
<%-- <jsp:setProperty name="p"  property="name" param="name"/> --%> <!-- �Ķ���ͷ� �� setname(�Ķ���Ϳ��� ������ ��) -->
<jsp:setProperty name="p" property="*"/><!--�Ķ���� ������ �̰� ��� ��õ -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:getProperty name="p" property="name" /> <!-- �̰��� p.getname�ϴ� ȿ���� �ִ� -->
</body>
</html>
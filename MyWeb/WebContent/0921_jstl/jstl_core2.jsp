<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- core�� c�� �̸����� ���ڴ� -->
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="org.kdea.web.cart.UserVO">
<jsp:setProperty name="user" property="id" value="���콺" />
</jsp:useBean>
<c:set var="name" value="hello world" />
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl ����</title>
</head>
<body>
<c:set target="${user}" property="id" value="${param.id}" />
${user.id }

</body>
</html>
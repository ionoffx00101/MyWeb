<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- core�� c�� �̸����� ���ڴ� -->
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="org.kdea.web.cart.UserVO">
<jsp:setProperty name="user" property="id" value="" />
</jsp:useBean>
<c:set var="name" value="" />
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl ����</title>
</head>
<body>
<c:set target="${user}" property="id" value="${param.id}" />


${user.id}
<c:choose>
<c:when test="${empty user.id}">�� �ƹ��͵� �Է����� �ʾҾ�</c:when>
<c:when test="${user.id==0}">�� 0�̴�</c:when>
<c:otherwise>�� 0�� �ƴϴ�</c:otherwise>
</c:choose>


</body>
</html>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- core�� c�� �̸����� ���ڴ� -->
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="org.kdea.web.cart.UserVO">
<jsp:setProperty name="user" property="id" value="true" />
</jsp:useBean>
<c:set var="name" value="true" />
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl ����</title>
</head>
<body>
<c:set target="${user}" property="id" value="${param.id}" />
<c:if test="${empty user.id}">�� �ƹ��͵� �Է����� �ʾҾ�</c:if>

${user.id}
<c:if test="${user.id==0}">�� 0�̴�</c:if>
<c:if test="${user.id>0}">�� 0���� ū����</c:if>


</body>
</html>
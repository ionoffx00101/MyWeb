<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- core를 c란 이름으로 쓰겠다 -->
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="org.kdea.web.cart.UserVO">
<jsp:setProperty name="user" property="id" value="true" />
</jsp:useBean>
<c:set var="name" value="true" />
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl 연습</title>
</head>
<body>
<c:set target="${user}" property="id" value="${param.id}" />
<c:if test="${empty user.id}">넌 아무것도 입력하지 않았어</c:if>

${user.id}
<c:if test="${user.id==0}">은 0이다</c:if>
<c:if test="${user.id>0}">은 0보다 큰수다</c:if>


</body>
</html>
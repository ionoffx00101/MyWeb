<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- core�� c�� �̸����� ���ڴ� -->
<% request.setCharacterEncoding("utf-8"); %>
<% int []ia ={10,9,8,7,6,5,4,3,2,1}; %>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>jstl ����</title>
</head>
<body>

<c:forEach var="i" items="<%=ia %>" begin="0" end="10" step="1" varStatus="status">
${status.index+1}��  ${i}<br>

</c:forEach>


</body>
</html>
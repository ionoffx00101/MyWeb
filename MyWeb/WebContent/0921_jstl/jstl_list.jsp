<%@page import="org.kdea.web.connectpool.EmpDAO"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%@ page import = "org.kdea.web.connectpool.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- core�� c�� �̸����� ���ڴ� -->
<% request.setCharacterEncoding("utf-8"); %>
<% 
EmpDAO dao = new EmpDAO();
List<EmpVO> vo = dao.getEmpList();

%>
<c:set var="vo" value="<%=vo%>" scope="request"></c:set>

<!DOCTYPE>

<html>
<head>
<meta charset="EUC-KR">
<title>jstl ����</title>
</head>
<body>

<c:forEach var="getvo" items="${vo}" begin="0" end="10" step="1" varStatus="status">
${getvo.empno} | ${getvo.ename}<br>
</c:forEach>


</body>
</html>
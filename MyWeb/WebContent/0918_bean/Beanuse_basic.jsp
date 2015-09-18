<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="p" class="org.kdea.web.bean.Product" />
<jsp:setProperty name="p" property="name" value="name에 들어갈값"/><%--  <% p.setName("name"); %> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:getProperty name="p" property="name" /> <!-- 이것은 p.getname하는 효과가 있다 -->
</body>
</html>
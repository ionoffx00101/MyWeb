<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="p" class="org.kdea.web.bean.Product" />
<%-- <jsp:setProperty name="p"  property="name" param="name"/> --%> <!-- 파라미터로 들어감 setname(파라미터에서 꺼내온 값) -->
<jsp:setProperty name="p" property="*"/><!--파라미터 많으면 이거 사용 추천 -->
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
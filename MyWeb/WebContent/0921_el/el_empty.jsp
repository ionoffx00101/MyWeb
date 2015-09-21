<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<jsp:useBean id="emp" class="org.kdea.web.cart.UserVO">
	<jsp:setProperty name="emp" property="name" value="마우스" />
</jsp:useBean>

<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>el 연습</title>
</head>
<body>
<jsp:getProperty property="name" name="emp"/>
${emp.name}
</body>
</html>
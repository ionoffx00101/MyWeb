<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<jsp:useBean id="emp" class="org.kdea.web.cart.UserVO">
	<jsp:setProperty name="emp" property="name" value="���콺" />
</jsp:useBean>

<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>el ����</title>
</head>
<body>
<jsp:getProperty property="name" name="emp"/>
${emp.name}
</body>
</html>
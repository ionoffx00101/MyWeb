<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%

/* Cookie[] cookies = request.getCookies();
String cname=cookies.getName();
if(cname.equals("id")){
	out.print(cookies[0].getValue());
} //��Ű ǥ������ */

%>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>el ����</title>
</head>
<body>
${cookie.id.values}
</body>
</html>
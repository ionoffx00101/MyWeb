<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%

/* Cookie[] cookies = request.getCookies();
String cname=cookies.getName();
if(cname.equals("id")){
	out.print(cookies[0].getValue());
} //쿠키 표준접근 */

%>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>el 연습</title>
</head>
<body>
${cookie.id.values}
</body>
</html>
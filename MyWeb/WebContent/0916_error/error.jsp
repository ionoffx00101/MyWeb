<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>
<%
String msg =null;
if(exception instanceof NumberFormatException){
	msg="숫자를 입력해주세요";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
미안!<br><Br>

<%=msg %><Br>
에러 타입 : <%=exception.getClass().getName() %><Br>
에러 메세지 :<%=exception.getMessage() %>
</body>
</html>
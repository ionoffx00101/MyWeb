<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>
<%
String msg =null;
if(exception instanceof NumberFormatException){
	msg="���ڸ� �Է����ּ���";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
�̾�!<br><Br>

<%=msg %><Br>
���� Ÿ�� : <%=exception.getClass().getName() %><Br>
���� �޼��� :<%=exception.getMessage() %>
</body>
</html>
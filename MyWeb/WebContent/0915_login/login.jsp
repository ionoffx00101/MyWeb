<%@ page import="org.java.webcontent.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% 
String hValue=request.getHeader("X-Requested-With");
if(hValue!=null && hValue.equals("XMLHttpRequest")){
	out.println("new LoginService(request).ajaxLogin()");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="div1">
login<br><br>
	<form id="form">
		id : <input type="text" name ="id" id="id" value="7839"><br> 
		name : <input type="text" name ="name" id="name" value="KING"><br>
		<button type="submit" id="login">로그인</button>
	</form>
</div>
</body>
</html>
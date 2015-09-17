<%@ page import="org.java.webcontent.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% 
String hValue=request.getHeader("X-Requested-With");
if(hValue!=null && hValue.equals("XMLHttpRequest")){
	out.println("new LoginService(request,response).ajaxLogin()");
}

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$('#form').append('<a href="Emplist.jsp">사원리스트 보기</a>');
</script>
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
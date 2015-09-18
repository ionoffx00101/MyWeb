<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="user" class="org.kdea.web.cart.UserVO" scope="session" />

<jsp:useBean id="dao" class="org.kdea.web.cart.UserDAO"/>

<jsp:setProperty property="id" name="user" param="id"/>
<jsp:setProperty property="name" name="user" param="name"/>

<% 

boolean check = dao.checkEmp(Integer.parseInt(user.getId()),user.getName());
 user.setCheck(check);
%>
<!DOCTYPE html >
<html>
<head>
<meta charset="EUC-KR">
<title>로그인창</title>
<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
<script type="text/javascript">
var ok =<%=check%>;
if(ok){
alert("로그인 되었습니다");
$('#divLnk').css("visibility","visible");
}
else{
	alert("로그인실패");
	location.href="login.jsp";
	}
</script>
<style type="text/css">
div #divLnk{visibility: hidden;}
</style>
</head>
<body>
<div id="divLnk"><a href="../0917_cart/books.jsp">책 리스트</a></div>
<jsp:getProperty property="check" name="user"/>
</body>
</html>
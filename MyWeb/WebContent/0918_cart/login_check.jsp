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
<title>�α���â</title>
<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
<script type="text/javascript">
var ok =<%=check%>;
if(ok){
alert("�α��� �Ǿ����ϴ�");
$('#divLnk').css("visibility","visible");
}
else{
	alert("�α��ν���");
	location.href="login.jsp";
	}
</script>
<style type="text/css">
div #divLnk{visibility: hidden;}
</style>
</head>
<body>
<div id="divLnk"><a href="../0917_cart/books.jsp">å ����Ʈ</a></div>
<jsp:getProperty property="check" name="user"/>
</body>
</html>
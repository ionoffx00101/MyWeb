<%@ page import="org.kdea.web.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="user" class="org.kdea.web.servlet.cart.UserVO">
<jsp:setProperty property="*" name="user" />
</jsp:useBean>

<jsp:useBean id="svc" class="org.kdea.web.servlet.cart.LoginService"/>
<jsp:setProperty property="request" name="svc" value="<%=request%>"/>
<% 
boolean check = svc.login(user);
session.setAttribute("check", check);
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
<div id="divLnk"><a href="books.jsp">å ����Ʈ</a></div>
</body>
</html>
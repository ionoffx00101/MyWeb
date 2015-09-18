<%@ page import="org.kdea.web.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<% 
boolean check = request.getAttribute("check");
session.setAttribute("check", check);
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
<body><form action="/MyWeb/UserServlet">
<input type="hidden" name="cmd" value="booklist">
<button type="submit" id="divLnk">책 리스트</button>
</form>
</body>
</html>
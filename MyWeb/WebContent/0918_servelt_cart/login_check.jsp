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
<body><form action="/MyWeb/UserServlet">
<input type="hidden" name="cmd" value="booklist">
<button type="submit" id="divLnk">å ����Ʈ</button>
</form>
</body>
</html>
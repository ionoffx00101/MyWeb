<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="EUC-KR ">
<title>아이디 비밀번호</title>
<% 
//request.setCharacterEncoding("euc-kr");
String id =(String) request.getParameter("id");
String pw = (String) request.getParameter("pw");
%>


</head>
<body>
	<form id="form"  name="form" method="get">
		id : <input type="text" name ="id" id="id"><br> pw : <input type="password" name ="pw" id="pw"><br>
		<button type="submit" id="btn">보내기</button>
	</form>
<div id="div1">
<% if(id!=null){ %>
<%=id%><br>
<%=pw %>
<%} %>
</div>
</body>
</html>
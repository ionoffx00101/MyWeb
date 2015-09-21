<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	session.setAttribute("data", "hello");

String data = (String)session.getAttribute("data"); // 표준
%>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>el 연습</title>
</head>
<body>
세션 오브젝트에 저장된 데이터 : <%=data%><br>
el을 이용해 영역오브젝트에 접근 : ${sessionScope.data}
</body>
</html>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%
HashMap<String,String> map = new HashMap<>();
map.put("map", "가나");
map.put("q", "다라");
map.put("s", "마바");
map.put("d", "사아");

request.setAttribute("map",map);
%>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>el 연습</title>
</head>
<body>

${requestScope.map.q} 
키를 넣어주면 된다.

</body>
</html>
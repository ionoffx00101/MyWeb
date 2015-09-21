<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%
List<String> list = new ArrayList<>();
list.add("가나");
list.add("다라");
list.add("마바");
list.add("김연");
pageContext.setAttribute("list",list);
%>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>el 연습</title>
</head>
<body>

${list[1]}

</body>
</html>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%
HashMap<String,String> map = new HashMap<>();
map.put("map", "����");
map.put("q", "�ٶ�");
map.put("s", "����");
map.put("d", "���");

request.setAttribute("map",map);
%>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>el ����</title>
</head>
<body>

${requestScope.map.q} 
Ű�� �־��ָ� �ȴ�.

</body>
</html>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%
List<String> list = new ArrayList<>();
list.add("����");
list.add("�ٶ�");
list.add("����");
list.add("�迬");
pageContext.setAttribute("list",list);
%>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>el ����</title>
</head>
<body>

${list[1]}

</body>
</html>
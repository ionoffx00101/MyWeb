<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% 
    String id1 = (String)pageContext.getAttribute("id");
    String id2 = (String) request.getAttribute("id");
    String id3 = (String) session.getAttribute("id");
    String id4 = (String) application.getAttribute("id");
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>영역체험</title>
</head>

<body>

id 1 = <%=id1 %><br>
id 2 = <%=id2 %><br>
id 3 = <%=id3 %><br>
id 4 = <%=id4 %><br>
</body>
</html>
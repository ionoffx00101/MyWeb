<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% 
    String msg = request.getParameter("msg");
    System.out.println("수신된 한글"+msg);
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<body>
<div>Get 방식으로 전달된 한글 : <%=msg %></div>
<a href="urlEncode.jsp?msg=한글전송 잘되니? OK">링크를 통해 한글전송해보기</a>
</body>
</html>
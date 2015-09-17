<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <% 
    String book = (String) session.getAttribute("book");
    String notebook = (String) session.getAttribute("notebook");
    String phone = (String) session.getAttribute("phone");

    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
장바구니
<br>
book = <%=book %><br>
notebook = <%=notebook %><br>
phone = <%=phone %><br>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% 
    String msg = request.getParameter("msg");
    System.out.println("���ŵ� �ѱ�"+msg);
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<body>
<div>Get ������� ���޵� �ѱ� : <%=msg %></div>
<a href="urlEncode.jsp?msg=�ѱ����� �ߵǴ�? OK">��ũ�� ���� �ѱ������غ���</a>
</body>
</html>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	session.setAttribute("data", "hello");

String data = (String)session.getAttribute("data"); // ǥ��
%>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>el ����</title>
</head>
<body>
���� ������Ʈ�� ����� ������ : <%=data%><br>
el�� �̿��� ����������Ʈ�� ���� : ${sessionScope.data}
</body>
</html>
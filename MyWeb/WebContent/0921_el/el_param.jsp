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
���� ������Ʈ�� ����� ������ : name=${param.name}<br>
<%=request.getParameter("name") %> �� ����<br>
request.getParameter("name")�� ���� ���� �Ķ���� ���� ȭ�鿡 ����϶�� �ǹ��̴�<br>
request�� �Ķ���Ͱ� ������ ���� �ش� <br>
�ٵ� el�� �� �׷���<br>

<form >
��� <input type="checkbox" name="hoddy" value="ehrtj">ehrtj
<input type="checkbox" name="hoddy" value="qwe">qwe
<input type="checkbox" name="hoddy" value="rgsda">rgsda
</form>
</body>
</html>
<%@page import="org.java.servlet.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	EmpVO descEmp = (EmpVO) request.getAttribute("descEmp");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	var updated = 0;
<%Object obj = request.getAttribute("updated");
			if (obj != null) {
				boolean result = (Boolean) obj;
				if (result) {%>
	updated = 1;
<%} else {%>
	updated = 2;
<%}
			}%>
	if (updated == 1) {
		alert('���� ����')
	} else if (updated == 2) {
		alert('���� ����')
	}

	function deleteCheck(url) {
		if (confirm("�Էµ� �������� ���� �����Ͻðڽ��ϱ�?")) {
			location.href=url
		}
	}
</script>
</head>
<body>

		���:
		<%=descEmp.getEmpno()%><br> �̸�:
		<%=descEmp.getEname()%><br> �μ�:
		<%=descEmp.getDeptno()%><br> �޷�:
		<%=descEmp.getSal()%><br> �Ի�:
		<%=descEmp.getHiredate()%>
		<p>
			<a href="ES"> ������� ���ư���</a>
		<p>
			[<a href="ES?cmd=edit&empno=<%=descEmp.getEmpno()%>">�����ϱ�</a>]
		<p>
			[<a href="javascript:deleteCheck('ES?cmd=delete&empno=<%=descEmp.getEmpno()%>');">�����ϱ�</a>]
	
</body>
</html>
<%@page import="org.java.servlet.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	EmpVO emp = (EmpVO) request.getAttribute("emp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset=EUC-KR>
<title>���� ����</title>
<script type="text/javascript">
	function formCheck() {
		var deptno = editForm.deptno.value;
		var sal = editForm.sal.value;
		if (deptno == '' || sal == '') {
			alert('�μ���ȣ �� �޿��� �ʼ� �Է»����Դϴ�');
			return;
		}
		if (confirm("�Էµ� �������� ���� �����Ͻðڽ��ϱ�?")) {
			editForm.submit();
		}
	}
</script>
</head>
<body>
	<form name="editForm" method="post" action="ES">
	    <input type="hidden" name="cmd" value="update">
		<input type="hidden" name="empno" value="<%=emp.getEmpno()%>">
		��� <%=emp.getEmpno()%><br> 
		�̸� <%=emp.getEname()%><br>
		�μ� <input type="text" name="deptno" value="<%=emp.getDeptno()%>"><br>
		�޷� <input type="text" name="sal" value="<%=emp.getSal()%>"><br>
		�Ի�
		<%=emp.getHiredate()%>
		<p>
	    <button type="button" onclick="javascript:formCheck();">�����ϱ�</button>
	</form>
</body>
</html>
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
<title>정보 수정</title>
<script type="text/javascript">
	function formCheck() {
		var deptno = editForm.deptno.value;
		var sal = editForm.sal.value;
		if (deptno == '' || sal == '') {
			alert('부서번호 및 급여는 필수 입력사항입니다');
			return;
		}
		if (confirm("입력된 내용으로 정말 수정하시겠습니까?")) {
			editForm.submit();
		}
	}
</script>
</head>
<body>
	<form name="editForm" method="post" action="ES">
	    <input type="hidden" name="cmd" value="update">
		<input type="hidden" name="empno" value="<%=emp.getEmpno()%>">
		사번 <%=emp.getEmpno()%><br> 
		이름 <%=emp.getEname()%><br>
		부서 <input type="text" name="deptno" value="<%=emp.getDeptno()%>"><br>
		급료 <input type="text" name="sal" value="<%=emp.getSal()%>"><br>
		입사
		<%=emp.getHiredate()%>
		<p>
	    <button type="button" onclick="javascript:formCheck();">갱신하기</button>
	</form>
</body>
</html>
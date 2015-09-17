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
		alert('수정 성공')
	} else if (updated == 2) {
		alert('수정 실패')
	}

	function deleteCheck(url) {
		if (confirm("입력된 내용으로 정말 삭제하시겠습니까?")) {
			location.href=url
		}
	}
</script>
</head>
<body>

		사번:
		<%=descEmp.getEmpno()%><br> 이름:
		<%=descEmp.getEname()%><br> 부서:
		<%=descEmp.getDeptno()%><br> 급료:
		<%=descEmp.getSal()%><br> 입사:
		<%=descEmp.getHiredate()%>
		<p>
			<a href="ES"> 목록으로 돌아가기</a>
		<p>
			[<a href="ES?cmd=edit&empno=<%=descEmp.getEmpno()%>">수정하기</a>]
		<p>
			[<a href="javascript:deleteCheck('ES?cmd=delete&empno=<%=descEmp.getEmpno()%>');">삭제하기</a>]
	
</body>
</html>
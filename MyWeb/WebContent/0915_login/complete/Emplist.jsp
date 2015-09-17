<%@ page import="java.io.*"%>
<%@ page import="javax.swing.*"%>
<%@ page import="org.java.webcontent.*"%>
<%@ page import="org.java.servlet.*"%>
<%@ page import="java.util.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	List<EmpVO> namelist = new EmpDAO().getPageAll();
	
	Object checkObj = session.getAttribute("check");

	
	if (checkObj != null) {
		
		boolean check = (boolean) checkObj;
		if (!check) {%>
			<script>
			alert("로그인페이지로 이동합니다");
			location.href="login.html";
			</script><%
		}
	} else {%>
		<script>
		alert("로그인페이지로 이동합니다");
		location.href="login.html";
		</script><%
	} 
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<%
		for (int i = 0; i < namelist.size(); i++) {
	%>
	<%=namelist.get(i).getEmpno()%>
	<%=namelist.get(i).getEname()%><br>
	<%
		}
	%>
</body>
</html>
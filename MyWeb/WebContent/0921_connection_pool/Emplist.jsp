<%@ page import="java.io.*"%>
<%@ page import="javax.swing.*"%>
<%@ page import="org.kdea.web.connectpool.*"%>
<%@ page import="java.util.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	List<EmpVO> namelist = new EmpDAO().getPageAll();
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
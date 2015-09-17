<%@page import="java.io.*"%>
<%@ page import="org.java.servlet.*"%>
<%@ page import="java.util.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
	
<%
	List<EmpVO> namelist = new EmpDAO().getPageAll();

	Object checkObj = request.getAttribute("check");
	
	log("리스트 오브젝트"+checkObj);
	if (checkObj != null) {
		
		boolean check = (boolean) checkObj;
		log("리스트 ㅊ-ㅔ크"+check);
		if (!check) {
			response.sendRedirect("login.html");
		}
	} else {
		response.sendRedirect("login.html");
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
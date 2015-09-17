<%@page import="javax.security.auth.callback.ConfirmationCallback"%>
<%@page import="java.io.*"%>
<%@page import="javax.swing.*"%>
<%@ page import="org.java.servlet.*"%>
<%@ page import="java.util.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	List<EmpVO> namelist = new EmpDAO().getPageAll();
	String msg = "";
	Object checkObj = session.getAttribute("check");
	
	log("리스트 오브젝트"+checkObj);
	if (checkObj != null) {
		
		boolean check = (boolean) checkObj;
		log("리스트 ㅊ-ㅔ크"+check);
		if (!check) {
			JOptionPane.showMessageDialog(null, "로그인을 하고 이용해주세요 \n 로그인페이지로 이동합니다");
			response.sendRedirect("login.html");
		}
	} else {
		
		JOptionPane.showMessageDialog(null, "로그인을 하고 이용해주세요 \n 로그인페이지로 이동합니다");
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
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
	
	log("����Ʈ ������Ʈ"+checkObj);
	if (checkObj != null) {
		
		boolean check = (boolean) checkObj;
		log("����Ʈ ��-��ũ"+check);
		if (!check) {
			JOptionPane.showMessageDialog(null, "�α����� �ϰ� �̿����ּ��� \n �α����������� �̵��մϴ�");
			response.sendRedirect("login.html");
		}
	} else {
		
		JOptionPane.showMessageDialog(null, "�α����� �ϰ� �̿����ּ��� \n �α����������� �̵��մϴ�");
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
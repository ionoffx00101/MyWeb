<%@ page import="java.io.*"%>
<%@ page import="javax.swing.*"%>
<%@ page import="org.java.webcontent.*"%>
<%@ page import="org.java.servlet.*"%>
<%@ page import="java.util.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	List<EmpVO> namelist = new EmpDAO().getPageAll();

boolean check=false;
String name = "";
String cvalue = "";
	Cookie[] cookies = request.getCookies();
	for (int i = 0; i < cookies.length; i++) {
		String cname = cookies[i].getName();
		if (cname.equals("loginSuccess")) {
			name=cname;
			cvalue=cookies[i].getValue();
			check=true;
		} else {

		}
	}
	if(!check){
		%>
		<script>
			alert("\n�α����������� �̵��մϴ�");
			location.href = "login.html";
		</script>
		<%
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
��Ű �̸� : <%=name%><br>
��Ű ��� : <%=cvalue%><br>
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
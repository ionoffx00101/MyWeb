<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Object cntObj = application.getAttribute("cnt");

	if (cntObj == null) { 
		//String path = "c://test/cnt.data";
		String realPath = application.getRealPath("/WEB-INF/cnt.data");
		DataInputStream din = new DataInputStream(new FileInputStream(realPath));
		int cnt = 0;
		try {
			cnt = din.readInt();

		} catch (IOException e) {
			DataOutputStream dout = new DataOutputStream(new FileOutputStream(realPath));
			dout.writeInt(0);
			dout.close();
		}
		cntObj = new Integer(cnt);
	}
	int cnt = (Integer) cntObj;
	application.setAttribute("cnt", ++cnt);

	if (cnt % 10 == 0) {
		//String path = "c://test/cnt.data";
		String realPath = application.getRealPath("/WEB-INF/cnt.data");
		DataOutputStream dout = new DataOutputStream(new FileOutputStream(realPath));
		dout.writeInt(cnt);
		dout.close();

	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	count
	<%=cnt%><br>
</body>
</html>
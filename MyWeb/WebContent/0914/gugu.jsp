<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%!public String gugu(int input) {
		String str = "";
		for (int i = 1; i < 10; i++) {
			str += "" + input + " * " + i + " = " + (input * i) + "<br>";
		}

		return str;
	}
%>
<%
	String sinput = request.getParameter("input");
	System.out.println(sinput);
	int guguinput = Integer.parseInt(sinput);
%>


</head>
<body>

<%=gugu(guguinput)%>

</body>
</html>
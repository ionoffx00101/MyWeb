<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	session.setAttribute("data", "hello");
String data = (String)session.getAttribute("data"); // 표준

%>
<!DOCTYPE>
<html>
<head>
<meta charset="EUC-KR">
<title>el 연습</title>
</head>
<body>
세션 오브젝트에 저장된 데이터 : name=${param.name}<br>
<%=request.getParameter("name") %> 과 같다<br>
request.getParameter("name")를 통해 구한 파라미터 값을 화면에 출력하라는 의미이다<br>
request는 파라미터가 없으면 널을 준다 <br>
근데 el은 안 그런다<br>

<form >
취미 <input type="checkbox" name="hoddy" value="ehrtj">ehrtj
<input type="checkbox" name="hoddy" value="qwe">qwe
<input type="checkbox" name="hoddy" value="rgsda">rgsda
</form>
</body>
</html>
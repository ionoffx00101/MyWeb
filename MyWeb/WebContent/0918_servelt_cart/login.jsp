<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="user" class="org.kdea.web.servlet.cart.UserVO" scope="session" />
<!DOCTYPE html >
<html>
<head>
<meta charset="EUC-KR">
<title>로그인창</title>
<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<div id="div1">
login<br><br>

<form action="login_check.jsp" method="post">
	id : <input type="text" name ="id" id="id" value="7839"><br> 
	name : <input type="text" name ="name" id="name" value="KING"><br>
	<button type="submit" id="login">로그인</button>
</form>
</div>
</body>
</html>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ include file ="login_ok.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>책 구입 페이지</title>
<style type="text/css">
.bookimg { width:100px; height: 180px;}
.booklist {margin-bottom: 50px;}
a:ACTIVE :VISITED :FOCUS :LINK :AFTER{
	color: black;
}
</style>
<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(click);
function click() {
	$('.booklist').on(click,function(evt) {	
		alert(imgsrc)
	});
}
</script>
</head>
<body>
책 리스트<br><br>
<!-- 책 네권을 배치하고 그중 한개의 책을 클릭하면 해당도서의 상세ㅔ정보가 화면에 출력되도록 -->
<div class="booklist"><a href="bookinfo_Git_GitHub.jsp">
<img src="images/Git_GitHub.jpg" class="bookimg">
Git_GitHub
</a>
</div>

<div class="booklist"><a href="bookinfo_IOT.jsp">
<img src="images/IOT.jpg" class="bookimg">
사물인터넷
</a>
</div>

<div class="booklist"><a href="bookinfo_JPA.jsp">
<img src="images/JPA.jpg" class="bookimg">
JPA 입문
</a>
</div>

<div class="booklist"><a href="bookinfo_Spring.jsp">
<img src="images/Spring.jpg" class="bookimg">
스프링 프레임워크
</a>
</div>

<div class="booklist"><a href="bookinfo_Unity.jsp">
<img src="images/Unity.jpg" class="bookimg">
유니티 
</a>
</div>

</body>
</html>
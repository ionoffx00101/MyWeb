<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ include file ="login_ok.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>å ���� ������</title>
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
å ����Ʈ<br><br>
<!-- å �ױ��� ��ġ�ϰ� ���� �Ѱ��� å�� Ŭ���ϸ� �ش絵���� �󼼤������� ȭ�鿡 ��µǵ��� -->
<div class="booklist"><a href="bookinfo_Git_GitHub.jsp">
<img src="images/Git_GitHub.jpg" class="bookimg">
Git_GitHub
</a>
</div>

<div class="booklist"><a href="bookinfo_IOT.jsp">
<img src="images/IOT.jpg" class="bookimg">
�繰���ͳ�
</a>
</div>

<div class="booklist"><a href="bookinfo_JPA.jsp">
<img src="images/JPA.jpg" class="bookimg">
JPA �Թ�
</a>
</div>

<div class="booklist"><a href="bookinfo_Spring.jsp">
<img src="images/Spring.jpg" class="bookimg">
������ �����ӿ�ũ
</a>
</div>

<div class="booklist"><a href="bookinfo_Unity.jsp">
<img src="images/Unity.jpg" class="bookimg">
����Ƽ 
</a>
</div>

</body>
</html>
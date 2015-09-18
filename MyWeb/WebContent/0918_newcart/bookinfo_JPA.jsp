<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>상세정보</title>
<style type="text/css">
div{float: left; margin-right: 50px;}
</style>
<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="bookinfo_js.js"></script>
</head>
<body>
<form id="form">
<input hidden="hidden" type="text" name="title" value="자바 ORM 표준 JPA 프로그래밍">
<input hidden="hidden" type="text" name="author" value="김영한">
<input hidden="hidden" type="text" name="publisher" value="에이콘">
<input hidden="hidden" type="text" name="pubdate" value="2015-07-28">
<input hidden="hidden" type="text" name="price" value="43000">
<input hidden="hidden" type="text" name="qty" value="0">
</form>
<div>
<img src="images/JPA.jpg" style="width: 100px;">
</div>
<div>
책이름 : 자바 ORM 표준 JPA 프로그래밍<br>
지은이 : 김영한  <br>
출판사 : 에이콘<br>
발행일 : 2015년 07월 28일<br>
정 가 : 43,000원<br>
수 량 : <input type="text" id="qty" value="1">
<button id="btn_purchase">구매</button>
<button id="btn_cart_add">장바구니 담기</button>
<a href="cartlist.jsp"><button id="btn_cart_view">장바구니 보기</button></a>
</div>
<br>
<div>
<a href="books.jsp"><button>목록보기</button></a>
</div>

</body>
</html>
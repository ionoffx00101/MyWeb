<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% /*Scriptlet: 자바코드를 삽입하기 위한 곳 (서버측의 내용을 작성) */

List<String> list = new ArrayList();
	list.add("유재석");
	list.add("김종국");
	list.add("송지효");
	list.add("개리");
	list.add("지석진");
	list.add("이광수");
	
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ol{list-style-type: lower-greek;}</style>
<meta charset=EUC-KR>
<title>OL,UL 실습</title>
</head>
<body background="../Images/투명.png">
<a href=#top>선두</a>
<ol>
<li><a href=#a><%=list.get(0)%></a></li><%-- Expression: 웹문서에 내용을 출력한다(서버측의 내용을 웹문서에 기재)  익스프레션에선 ;을 넣어선 안된다 자바 문법이 아니라  jsp 문법이기 때문--%>
<li><a href=#b><%=list.get(1)%></a></li>
<li><a href=#c><%=list.get(2)%></a></li>
<li><a href=#d><%=list.get(3)%></a></li>
<li><a href=#e><%=list.get(4)%></a></li>
<li><a href=#f><%=list.get(5)%></a></li>
</ol>

<a name=a><img src="../Images/유재석.jpg" width="500px">재석이</a><br>
<a name=b>종국이<img src="../Images/김종국.jpg"  width="500px"></a><br>
<a name=c><img src="../Images/송지효.jpg"  width="500px">월요</a><br>
<a name=d>커플<img src="../Images/개리.jpg"  width="500px"></a><br>
<a name=e><img src="../Images/지석진.jpg"  width="500px">레이스 스타터</a><br>
<a name=f>배신자<img src="../Images/이광수.png"  width="500px"></a><br>
</body>
</html>
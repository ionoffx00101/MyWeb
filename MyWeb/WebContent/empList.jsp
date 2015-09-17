<%@page import="org.java.servlet.NaviVO"%>
<%@page import="java.util.List"%>
<%@page import="org.java.servlet.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	List<EmpVO> list = (List<EmpVO>) request.getAttribute("list");
	NaviVO nav = (NaviVO) request.getAttribute("nav");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	var updated = 0;
<%Object obj = request.getAttribute("deleted");
			if (obj != null) {
				boolean result = (Boolean) obj;
				if (result) {%>
	updated = 1;
<%} else {%>
	updated = 2;
<%}
			}%>
	if (updated == 1) {
		alert('삭제 성공')
	} else if (updated == 2) {
		alert('삭제 실패')
	}
	
	var empAdded = 0;
	<%Object obj2 = request.getAttribute("empAdded");
				if (obj2 != null) {
					boolean result = (Boolean) obj2;
					if (result) {%>
					empAdded = 1;
	<%} else {%>
	empAdded = 2;
	<%}
				}%>
		if (empAdded == 1) {
			alert('추가 성공')
		} else if (empAdded == 2) {
			alert('추가 실패')
		}

</script>

<style type="text/css">
body {
	text-align: center;
}
div#div1{display: inline-block; width: 400px; text-align: right;}
table {width:400px;
	display: inline-block;
	border: 1px solid black;
}

td {
	width: 100px;
	border-bottom: 1px dotted blue;
	text-align: center;
	border-right: 1px dotted black;
}

td.btrow {
	border-bottom: none;
}

td.right{width:300px;
border-right: none;
text-align: left}

td.right:hover{background-color: cyan}

th{border-right: 1px dotted black; border-bottom: double; background-color: lightgray;}
th.right{border-right:none;}

a {
	text-decoration: none;
}

a:hover{color:red; font-weight: bolder;}
</style>
</head>
<body>
<h3>SCOTT의 사원명부</h3>
<div id="div1"><%=nav.getCurrPage()%>p/<%=nav.getTatalPages()%>pages</div><br>
<table>
<tr><th>사번</th><th class="right">이름</th></tr>
	<%
		for (int i = 0; i < list.size(); i++) {
			EmpVO ev = list.get(i);
	if(i==list.size()-1){ %>
	<tr><td class="btrow"><%=ev.getEmpno()%></td>
	<td class="btrow right"><a href="ES?cmd=desc&empno=<%=ev.getEmpno()%>"><%=ev.getEname()%></a></td>
	</tr><%continue;} %>
	
	<tr><td><%=ev.getEmpno()%></td>
	<td class="right"><a href="ES?cmd=desc&empno=<%=ev.getEmpno()%>"><%=ev.getEname()%></a></td>
	</tr>
	<%
		}
		%></table><br>
		<%
		int[] nums = nav.getLinks();
		if (nav.isLeftMore()) {
	%>
	<a href="ES?cmd=list&page=<%=nums[0] - 1%>"><img src="Images/leftA.png"></a>
	<%
		}
		for (int i = 0; i < nums.length; i++) {
			int num = nums[i];
			if (nav.getCurrPage() == num) {
	%>
	[
	<span style='color: red; font-size: 1.5em;'><%=num%></span>]
	<%
		} else {
	%>
	[
	<a href="ES?cmd=list&page=<%=num%>"><%=num%></a>]
	<%
		}
		}
		if (nav.isRightMore()) {
	%>
	<a href="ES?cmd=list&page=<%=nums[nums.length - 1] + 1%>"><img src="Images/rightA.png"></a>
	<%
		}
	%><br>
	[<a href="empAdd.jsp">사원정보 추가</a>]




</body>
</html>
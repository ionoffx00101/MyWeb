<%@ page contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    Object checkObj = session.getAttribute("check");
if (checkObj != null) {
		
		boolean check = (boolean) checkObj;
		if (!check) {%>
			<script>
			alert("�α����������� �̵��մϴ�");
			location.href="login.html";
			</script><%
		}
	} else {%>
		<script>
		alert("�α����������� �̵��մϴ�");
		location.href="login.html";
		</script><%
	} %>

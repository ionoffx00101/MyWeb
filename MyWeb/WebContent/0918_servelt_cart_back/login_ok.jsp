<%@ page contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <jsp:useBean id="user" class="org.kdea.web.servlet.cart.UserVO">
<jsp:setProperty property="*" name="user" />
</jsp:useBean>


 <%
	
	    Object checkObj = session.getAttribute("check");
	    
if (checkObj != null) {
		
		boolean check = (boolean) checkObj;
		if (!check) {%>
			<script>
			alert("로그인페이지로 이동합니다");
			location.href="login.jsp";
			</script><%
		}
	} else {%>
		<script>
		alert("로그인페이지로 이동합니다");
		location.href="login.jsp";
		</script><%
	} %>


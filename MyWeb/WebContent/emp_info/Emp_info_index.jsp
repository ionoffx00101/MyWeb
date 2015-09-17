<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="org.java.Emp_info.EmpVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>사원정보</title>
<style type="text/css">
#info_img {
	border: 1px solid #dddddd;
	width: 160px; 
	height: 180px;
}
</style>
<script type="text/javascript" src="/MyWeb/emp_info/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	
<%List<EmpVO> namelist = (List<EmpVO>) request.getAttribute("namelist");%>
	$(check);

	function check() {

		$('#select').change(function(evt) {

			$.ajax({type:"post", url:"/MyWeb/Emp_info_Servelet", dataType:"json",  data:{"cmd":"full_info",'id':$('#select option:selected').val()},success: function(response) { $('#info_name').text(ename) }});
			evt.preventDefault(); 

			
			
		});
		

	}
</script>

</head>
<body>
	<form name="cmd" value="full_info">
		<img alt="" src="" id="info_img" name="info_img"><br> <select id="select" name="select">
			<%
				for (int i = 0; i < namelist.size(); i++) {
			%>
			<option name="selectname" value="<%=namelist.get(i).getEname()%>"><%=namelist.get(i).getEname()%></option>
			<%
				}
			%>
		</select><br>
		<!-- 온데이터로 for 문 돌려서 여러개만들면서 같은 이름으로 해서 그룹에 들어가게 해줌 -->
		번 호 : <input type="text" name="info_num"><br> 이 름 : <input
			type="text" name="info_name" id="info_name" ;><br> 부 서 : <input
			type="text" name="info_depart"><br> 근무지 : <input
			type="text" name="info_loc"><br>
	</form>
</body>
</html>
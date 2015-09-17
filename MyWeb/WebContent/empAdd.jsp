<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사원정보 추가폼</title>
<style type="text/css">
body{text-align: center;}

form{
     display: inline-block;
	 border: 1px solid black;}
table {width: 400px;
	display: inline-block;
	border: 1px solid black;
}
th {
	width: 100px;
	border-bottom: 1px solid black;
	text-align: center;
	border-right: 1px solid black;
	background-color: lightgray;
}
td {width:300px;
text-align: left;
background-color: white;
border-bottom: 1px solid black;}

td.btrow {
	border-bottom: none;
}
th.btrow {
	border-bottom: none;
}

td.btn{
text-align: center;
}

</style>
<script type="text/javascript">
function formCheck(){
	var empno = inputForm.empno.value;
	var ename = inputForm.ename.value;
	var deptno = inputForm.deptno.value;
	var sal = inputForm.sal.value;
	var hiredate = inputForm.hiredate.value;
	if(empno==null){alert('사번은 필수 입력사항 입니다') return false;}
	if(ename==null){alert('이름은 필수 입력사항 입니다') return false;}
	if(deptno==null){alert('부서번호는 필수 입력사항 입니다') return false;}
	if(sal==null){alert('급여는 필수 입력사항 입니다') return false;}
	if(hiredate==null){alert('입사일은 필수 입력사항 입니다') return false;}
	return true;
}
</script>
</head>
<body>
<h3>사원정보 입력 폼</h3>
<form name="inputForm" action="ES" method="post" onsubmit="return formCheck();">
<input type="hidden" name="cmd" value="empAdd">
<table>
<tr><th>사번</th> <td class="right"><input type="text" name="empno"></td></tr>
<tr><th>이름</th> <td class="right"><input type="text" name="ename"></td></tr>
<tr><th>부서</th> <td class="right"><input type="text" name="deptno"></td></tr>
<tr><th>급여</th> <td class="right"><input type="text" name="sal"></td></tr>
<tr><th>입사일</th> <td class="right"><input type="date" name="hiredate"></td></tr>
<tr><td class="btn btrow" colspan="2"><input type="reset" value="취 소">
<input type="submit" value="저 장"></tr>
</table>
</form>
</body>
</html>
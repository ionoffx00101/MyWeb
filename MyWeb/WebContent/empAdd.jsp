<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������� �߰���</title>
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
	if(empno==null){alert('����� �ʼ� �Է»��� �Դϴ�') return false;}
	if(ename==null){alert('�̸��� �ʼ� �Է»��� �Դϴ�') return false;}
	if(deptno==null){alert('�μ���ȣ�� �ʼ� �Է»��� �Դϴ�') return false;}
	if(sal==null){alert('�޿��� �ʼ� �Է»��� �Դϴ�') return false;}
	if(hiredate==null){alert('�Ի����� �ʼ� �Է»��� �Դϴ�') return false;}
	return true;
}
</script>
</head>
<body>
<h3>������� �Է� ��</h3>
<form name="inputForm" action="ES" method="post" onsubmit="return formCheck();">
<input type="hidden" name="cmd" value="empAdd">
<table>
<tr><th>���</th> <td class="right"><input type="text" name="empno"></td></tr>
<tr><th>�̸�</th> <td class="right"><input type="text" name="ename"></td></tr>
<tr><th>�μ�</th> <td class="right"><input type="text" name="deptno"></td></tr>
<tr><th>�޿�</th> <td class="right"><input type="text" name="sal"></td></tr>
<tr><th>�Ի���</th> <td class="right"><input type="date" name="hiredate"></td></tr>
<tr><td class="btn btrow" colspan="2"><input type="reset" value="�� ��">
<input type="submit" value="�� ��"></tr>
</table>
</form>
</body>
</html>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% /*Scriptlet: �ڹ��ڵ带 �����ϱ� ���� �� (�������� ������ �ۼ�) */

List<String> list = new ArrayList();
	list.add("���缮");
	list.add("������");
	list.add("����ȿ");
	list.add("����");
	list.add("������");
	list.add("�̱���");
	
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ol{list-style-type: lower-greek;}</style>
<meta charset=EUC-KR>
<title>OL,UL �ǽ�</title>
</head>
<body background="../Images/����.png">
<a href=#top>����</a>
<ol>
<li><a href=#a><%=list.get(0)%></a></li><%-- Expression: �������� ������ ����Ѵ�(�������� ������ �������� ����)  �ͽ������ǿ��� ;�� �־ �ȵȴ� �ڹ� ������ �ƴ϶�  jsp �����̱� ����--%>
<li><a href=#b><%=list.get(1)%></a></li>
<li><a href=#c><%=list.get(2)%></a></li>
<li><a href=#d><%=list.get(3)%></a></li>
<li><a href=#e><%=list.get(4)%></a></li>
<li><a href=#f><%=list.get(5)%></a></li>
</ol>

<a name=a><img src="../Images/���缮.jpg" width="500px">�缮��</a><br>
<a name=b>������<img src="../Images/������.jpg"  width="500px"></a><br>
<a name=c><img src="../Images/����ȿ.jpg"  width="500px">����</a><br>
<a name=d>Ŀ��<img src="../Images/����.jpg"  width="500px"></a><br>
<a name=e><img src="../Images/������.jpg"  width="500px">���̽� ��Ÿ��</a><br>
<a name=f>�����<img src="../Images/�̱���.png"  width="500px"></a><br>
</body>
</html>
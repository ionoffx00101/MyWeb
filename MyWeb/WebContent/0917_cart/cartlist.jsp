<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="org.kdea.web.cart.*"%>
<%@ page import="java.util.*"%>
<%
	CartMgr cart = (CartMgr) session.getAttribute("cart");
 	List<Book> cartlist =cart.getCart();
%>
<%
int allprice=0;
for(int i=0;i<cartlist.size();i++){
	allprice+=(cartlist.get(i).getPrice())*(cartlist.get(i).getQty());
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ٱ���</title>
<style type="text/css">
body {
	margin-top: 40px;
	text-align: center;
}
table {
	display: inline-block;
	border: 1px solid aqua;
}
td{background-color: #dddddd;}
</style>
</head>
<body>
��ٱ��� <bR><bR>
<div>
<table>
<tr>
<td>������</td>
<td>����</td>
<td>����</td>
<td>���ǻ�</td>
<td>������</td>
<td>����</td>
<td>����</td>
</tr>
<% for(int i=0;i<cartlist.size();i++){ %>
<tr>
<td><%=cartlist.get(i).getTitle() %></td>
<td><%=cartlist.get(i).getPrice() %></td>
<td><%=cartlist.get(i).getAuthor() %></td>
<td><%=cartlist.get(i).getPublisher() %></td>
<td><%=cartlist.get(i).getPubdate() %></td>
<td><input type="number" value="<%=cartlist.get(i).getQty() %>" style="width: 40px;"><button>����</button></td>

<td><button>����</button></td>
</tr>
<% } %>
<tr>
<td>�Ѱ�</td>
<td><%=allprice %></td>
<td colspan="5"></td>

</tr>
</table>
</div>
<bR>
<a href="books.jsp"><button>��� �����ϱ�</button></a>
</body>
</html>
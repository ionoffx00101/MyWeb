<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="org.kdea.web.cart.*"%>
<%@ page import="java.util.*"%>
<%
	CartMgr cart = (CartMgr) session.getAttribute("cart");
 	List<Book> cartlist =cart.getCart();
 	
 	int total=0;
	
	for(int i=0;i<cartlist.size();i++){
		total+=cartlist.get(i).getPrice() * cartlist.get(i).getQty();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ٱ���</title>
<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(it);
function it(){
$('button[class=btn_Update]').on('click',function(){
	var idx = $(this).attr('data-idx');
	var qty= $('#qty'+idx).val();
	$.ajax({
		type:'post',
		url:"cartlist_update.jsp",
		dataType:'json',
		data:{'idx':idx,'qty':qty},
		success:function(res){
			if(res.updated){
				alert("����");
				$('#total').text(res.total+"��");
			}
			else{alert("����");}
		},
		error:function(err){
			alert("����");
		}
	});
});
$('button[class=btn_Remove]').on('click',function(){
	var idx = $(this).attr('data-idx');
	$.ajax({
		type:'post',
		url:"cartlist_remove.jsp",
		dataType:'json',
		data:{'idx':idx},
		success:function(res){
			if(res.remove){
				alert("����");
			location.href="cartlist.jsp";
			}
			else{
				alert("���� ���ٿ���");
			}
		},
		error:function(err){
			alert("����");
		}
	});
});
$('button[class=btn_clean]').on('click',function(){
	$.ajax({
		type:'post',
		url:"cartlist_clean.jsp",
		dataType:'json',
		data:{'clean':"ok"},
		success:function(res){
			if(res.remove){
				alert("����");
			location.href="cartlist.jsp";
			}
			else{
				alert("���� ���ٿ���");
			}
		},
		error:function(err){
			alert("����");
		}
	});
});
}
</script>
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
<td><input type="number" value="<%=cartlist.get(i).getQty()%>" id="qty<%=i%>" style="width: 40px;"><button type ="button" class="btn_Update" data-idx=<%=i%>>����</button></td>
<td><button class="btn_Remove" data-idx=<%=i%>>����</button></td>
</tr>
<% } %>
<tr>
<td>�Ѱ�</td>
<td id="total"><%=total %>��</td>
<td colspan="5"></td>

</tr>
</table>
</div>
<bR>
<a href="books.jsp"><button>��� �����ϱ�</button></a>
<a href="#"><button>���� �ϱ�</button></a>
<button class="btn_clean" >��ٱ��� ����</button>
</body>
</html>
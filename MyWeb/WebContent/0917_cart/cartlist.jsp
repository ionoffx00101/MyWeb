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
<title>장바구니</title>
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
				alert("ㅇㅋ");
				$('#total').text(res.total+"원");
			}
			else{alert("ㄴㄴ");}
		},
		error:function(err){
			alert("에러");
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
				alert("ㅇㅋ");
			location.href="cartlist.jsp";
			}
			else{
				alert("에러 갔다오고");
			}
		},
		error:function(err){
			alert("에러");
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
				alert("ㅇㅋ");
			location.href="cartlist.jsp";
			}
			else{
				alert("에러 갔다오고");
			}
		},
		error:function(err){
			alert("에러");
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
장바구니 <bR><bR>
<div>
<table>
<tr>
<td>도서명</td>
<td>가격</td>
<td>저자</td>
<td>출판사</td>
<td>출판일</td>
<td>수량</td>
<td>삭제</td>
</tr>
<% for(int i=0;i<cartlist.size();i++){ %>
<tr>
<td><%=cartlist.get(i).getTitle() %></td>
<td><%=cartlist.get(i).getPrice() %></td>
<td><%=cartlist.get(i).getAuthor() %></td>
<td><%=cartlist.get(i).getPublisher() %></td>
<td><%=cartlist.get(i).getPubdate() %></td>
<td><input type="number" value="<%=cartlist.get(i).getQty()%>" id="qty<%=i%>" style="width: 40px;"><button type ="button" class="btn_Update" data-idx=<%=i%>>적용</button></td>
<td><button class="btn_Remove" data-idx=<%=i%>>삭제</button></td>
</tr>
<% } %>
<tr>
<td>총계</td>
<td id="total"><%=total %>원</td>
<td colspan="5"></td>

</tr>
</table>
</div>
<bR>
<a href="books.jsp"><button>계속 쇼핑하기</button></a>
<a href="#"><button>구매 하기</button></a>
<button class="btn_clean" >장바구니 비우기</button>
</body>
</html>
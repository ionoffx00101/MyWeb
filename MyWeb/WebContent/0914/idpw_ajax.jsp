<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="EUC-KR ">
<title>아이디 비밀번호</title>

<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
<script type="text/javascript"> 

$(check);

function check() {

	$('#form').submit(function(evt) {	
		
		$.ajax({type:"post", url:"idpw_ajax_server.jsp", dataType:"json",  data:{'id':$('#id').val(),'pw':$('#pw').val()},success: function(res){
		 	$('#div1').append(res.id+'<br>');
			$('#div1').append(res.pw);

				}}); 
		evt.preventDefault();
	});
	

}



</script>

</head>
<body>
	<form id="form" >
		id : <input type="text" name ="id" id="id"><br> 
		pw : <input type="password" name ="pw" id="pw"><br>
		<button type="submit">보내기</button>
	</form>
<div id="div1">

</div>
</body>
</html>
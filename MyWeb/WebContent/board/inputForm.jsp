<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(it);
	function it() {
		
		$('button[class=btn_write]').on('click', function() {
			alert("알람");
		 	$.ajax({
				type : 'post',
				url : "posts_write.jsp",
				dataType : 'json',
				data : {
					"check":"check"
				},
				success : function(res) {
					if (res.check) {
						alert("ㅇㅋ");
						$('#total').text(res.total + "원");
					} else {
						alert("ㄴㄴ");
					}
				},
				error : function(err) {
					alert("에러");
				}
			});
		}); 
	}
</script>
</head>
<body>

	<form action="Board" enctype="multipart/form-data">
		<!-- ../Board  Board?cmd=inputForm-->
		<input type="hidden" name="cmd" value="inputForm">
		<h2>글쓰기</h2>
		제목 : <input type="text" name="title"><br> 글쓴이 : <input
			type="text" name="author"><br> 내용 :
		<textarea rows="3" cols="50" placeholder="이곳에 입력" name="content"></textarea>
		<br> 첨부파일 : <input type="file" name="file"><br> 글번호
		/ 일자 / 히트수 부모글번호 는 자동임<br>
		<button type ="button" class="btn_write">글쓰기</button>
		<button type ="button" class="btn_init">초기화</button>
		<button type ="button" class="btn_cancel">취소</button>
		<button type ="button" class="btn_list">글목록</button>
	</form>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보드가 있는 곳</title>
</head>
<body>

<form action="Board">
<input type="hidden" name="cmd" value="inputForm">
<h2>글쓰기</h2>
제목 : <input type="text"><br>
글쓴이 : <input type="text"><br>
내용 : <textarea rows="3" cols="50" placeholder="이곳에 입력">name="intro"</textarea><br>
첨부파일 : <input type="file"><br>
글번호 / 일자 / 히트수 부모글번호 는 자동임<br>
<button type="submit">글쓰기</button> <button>초기화</button> <button>취소</button>
</form>
</body>
</html>
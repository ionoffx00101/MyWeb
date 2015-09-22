<%@page import="upload.*"%>
<%@page import="java.util.*"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% AttachedDAO dao = new AttachedDAO();
List<AttachedVO> list=dao.allFile();

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<div>
<%for(int i=0;i<list.size();i++){%>

<a href="DownloadServlet?file=<%=list.get(i).getNum()%>">다운받기</a> | 

<%=list.get(i).getNum()%> | <%=list.get(i).getOriginfn()%> | <%if(list.get(i).getSavedfn()!=null){%><%=list.get(i).getSavedfn()%> <%}else{ %>중복파일없음<%} %> | <%=list.get(i).getLen()%><br>

<%	
}
%>
</div>
</body>
</html>
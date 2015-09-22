<%@page import="java.util.*"%>
<%@page import="java.io.File"%>
<%@page import="upload.UploadInfo"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% UploadInfo info = (UploadInfo)request.getAttribute("uploadInfo");
 HashMap<String,File> fileMap = info.getFileMap();
 Set<String> keys = fileMap.keySet();
 Iterator<String> iterator = keys.iterator();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>파일 업로드 정보</title>
<style>
 th{text-align: right; height:30px;}
 td{text-align: left; height:30px;}
 caption { font-size: 17pt; }
</style>
</head>
<body>
<center><br/><br/>
 <table border="1" cellspacing="0" cellpadding="5">
  <caption>파일 업로드 결과</caption>
  <tr><th>작성자</th><td><%=info.getUserName()%></td></tr>
  <tr><th>설 명</th><td><%=info.getDesc()%></td></tr>
  <tr><th>원래 파일명</th><td>
   <%
    
    while(iterator.hasNext()) { 
     String originName = iterator.next();
     String changedName = fileMap.get(originName).getName();%>
     <a href="DownloadServlet?file=<%=originName%>"><%=originName%></a> :
     <%=changedName%>
     <br/>
<%    }
   %>
  </td></tr>
 </table>

</center>
</body>
</html>
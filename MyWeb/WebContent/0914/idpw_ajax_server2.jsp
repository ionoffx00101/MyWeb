<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<% 
String id =(String) request.getParameter("id");
String pw = (String) request.getParameter("pw");

if(Integer.parseInt(id)>100){
	response.sendRedirect("http://google.com");
}
else{
	response.sendRedirect("http://naver.com");
	
}


System.out.println("여기는 온단다");
System.out.println(id);

%>
{"id":"<%=id%>","pw":"<%=pw %>"}

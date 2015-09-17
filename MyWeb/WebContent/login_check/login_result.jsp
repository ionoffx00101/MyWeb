<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% 
boolean isOk = (boolean)request.getAttribute("isOk");
%>
	{"isOk":<%=isOk%>}
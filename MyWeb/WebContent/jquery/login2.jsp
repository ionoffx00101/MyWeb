<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
boolean ok = (boolean)request.getAttribute("ok");
%>
	{"ok":<%=ok%>}
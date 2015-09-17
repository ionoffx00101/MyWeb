<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String fn = request.getParameter("fn");
%>
<!-- <p>hello world </p> -->
{"req":"<%=fn%>", "fn":"<%=fn%>.png"}
<%-- <img src="../Images/<%=fn+".png"%>">} --%>
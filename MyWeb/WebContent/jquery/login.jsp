<%@page import="org.java.web.Member"%>
<%@page import="java.util.*"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	trimDirectiveWhitespaces="true"%>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	if (id != null && !id.equals("") && pass != null && !pass.equals("")) {
%>{"id":"<%=id%>", "pass":"<%=pass%>" , "ok":true}
<%
	} else {
%>{"id":"<%=id%>", "pass":"<%=pass%>" , "ok":false}
<%
	}
%>


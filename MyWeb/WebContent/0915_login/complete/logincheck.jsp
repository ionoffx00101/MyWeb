<%@page import="org.java.servlet.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<% 
String id =(String) request.getParameter("id");
String name = (String) request.getParameter("name");

EmpDAO dao = new EmpDAO();
boolean check = dao.bgetEmp(Integer.parseInt(id),name);
log(""+check);
session.setAttribute("check",check);
%>

{"check":<%=check%>,"id":"<%=id%>","name":"<%=name %>"}

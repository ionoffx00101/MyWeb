<%@page import="org.java.servlet.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<% 
String id =(String) request.getParameter("id");
String name = (String) request.getParameter("name");

EmpDAO dao = new EmpDAO();
boolean check = dao.bgetEmp(Integer.parseInt(id),name);

if(check){
	Cookie c = new Cookie("loginSuccess", "true");
	c.setMaxAge(10);
	response.addCookie(c);
	}
%>
{"check":<%=check%>}

<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="org.java.Emp_info.*" %>
<% 
EmpVO namelist = (EmpVO) request.getAttribute("namelist");
%>

{"empno":<%=namelist.getEmpno()%>,"ename":<%=namelist.getEname()%>}

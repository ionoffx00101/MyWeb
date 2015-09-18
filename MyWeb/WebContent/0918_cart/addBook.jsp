<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="org.kdea.web.cart.*" %>
<%@ page import="java.util.*" %>
<% 

CartService svc= new CartService(request);

Book b = svc.getBook();
boolean check = svc.add(b);

%>
{"check":"<%=check%>"}
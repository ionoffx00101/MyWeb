<%@ page import="org.kdea.web.cart.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
CartService cs = new CartService(request);
boolean remove = cs.removeItem();
%>
{"remove":<%=remove%>}
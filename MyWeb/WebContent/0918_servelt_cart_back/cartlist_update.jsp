<%@ page import="org.kdea.web.servlet.cart.*"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
CartService cs = new CartService(request);
boolean updated = cs.updateItem();
int total = cs.getTotal();
%>
{"updated":<%=updated%>,"total":"<%=total %>"}
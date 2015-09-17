

<%@page import="java.util.*"%>
<%@page import="org.java.web.Product"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	trimDirectiveWhitespaces="true"%>
<%
	String num = request.getParameter("num");
	int num2 = Integer.parseInt(num)-1;
	List<Product> list = new ArrayList<>();
	list.add(new Product("상품1", 25000));
	list.add(new Product("상품2", 26000));
	list.add(new Product("상품3", 27000));
%>


{"title":"<%=list.get(num2).getTitle()%>","price":"<%=list.get(num2).getPrice()%>"}


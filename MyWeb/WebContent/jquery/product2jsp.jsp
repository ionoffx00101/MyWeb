<?xml version="1.0" encoding="utf-8"?>
<%@page import="java.util.*"%>
<%@page import="org.java.web.Product"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	trimDirectiveWhitespaces="true"%>
<%
	//DB에서 데이터를 가져와서 xml 문서를 구성한다.
	List<Product> list = new ArrayList<>();
	list.add(new Product("상품1", 25000));
	list.add(new Product("상품2", 26000));
	list.add(new Product("상품3", 27000));
%>
<products> <%
 	for (int i = 0; i < list.size(); i++) {
 %> <product num=<%=i+1%>>
 <title><%=list.get(i).getTitle()%></title>
 <price><%=list.get(i).getPrice()%></price>
 
 </product>
 <%	}
 %> </products>

<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="board.*" %>
<%@ page import="java.util.*" %>
<% 
System.out.println("post_write");
boolean check = new BoardService(request).postsWrite();
System.out.println("post_write2"+check);
%>
{"check":"<%=check%>"}
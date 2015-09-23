<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="board.*" %>
<%@ page import="java.util.*" %>
<% 
System.out.println("post_write1");
BoardService svc= new BoardService(request);
System.out.println("post_write");
boolean check = svc.postsWrite();
System.out.println("post_write2"+check);
%>
{"check":"<%=check%>"}
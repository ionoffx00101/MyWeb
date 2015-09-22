<%@page import="java.sql.Date"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.io.FilenameUtils"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/><!--  자바코드가 아닌 코어태그로 인코딩을 처리함 -->

<html><head> <title> Apache ServletFileUpload example </title></head>
<body>
<center><table>
 <tr><td><h1>파일 업로드 결과 </h1></td></tr>
 <tr><td> 
<% /* 업로드 html에서 폼을 받으면 이곳이 실행이된다  request.get..으로 파일은 받을 수 없다*/
 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if (!isMultipart) { //파일 보내야지 실행하겠다 
 }else {
    FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    List items = null;
    try {
       items = upload.parseRequest(request);
    } catch (FileUploadException e) {
     out.println("에러 1: "+e);
    } // 위는 파일 업로드에 꼭 필요한 로직이다.
    Iterator itr = items.iterator(); // items 는 List 이므로 리스트 다루는 방법으로 해도 된다
    while (itr.hasNext()) {
      FileItem item = (FileItem) itr.next();
      if (item.isFormField()) { // 파일이 아닌 폼필드에 입력한 내용을 가져옴.
        if(item!=null && item.getFieldName().equals("name")) {
          String name = item.getString("KSC5601");//form field 안에 입력한 데이터를 가져옴
          out.println("전송자:"+name+"<br>"); 
        }else if(item!=null && item.getFieldName().equals("desc")) {
          String desc = item.getString("KSC5601");
          out.println("파일에 대한 설명:"+desc+"<br>");
        }
     } else { // 폼 필드가 아니고 파일인 경우
    try {
       String itemName = item.getName();//로컬 시스템 상의 파일경로 및 파일 이름 포함
       if(itemName==null || itemName.equals("")) continue;
       String fileName = FilenameUtils.getName(itemName);// 경로없이 파일이름만 추출함
       // 전송된 파일을 서버에 저장하기 위한 절차
       //String rootPath = getServletContext().getRealPath("/");
       File savedFile = new File("C:/upload/"+fileName); 
       //여기 파일 네임은 진짜 파일 네임  파일 번호를 가지고 진짜 이름을 찾아와야한다.
       if(savedFile.exists()){//파일 중복 검사
    	/*  파일명이 중복되므로 원래의 파일명을 보존하고 실제 저장되는 파일명을 변경하여 서버시스템에 저장해야한다.
    	   	다운할때는 원래 파일명으로 다운로드가 가능해야한다
    	   	이건 데이터베이스가 필요한문제다.. 
    	   	이용자에게는 원래의 파일명을 보여주고 다운로드할 수 있게 하고 이용자가 해당 파일명을 클릭하여 다운로드하려고 하면 
    	   	변경된 파일명을 읽어서 다운로드 되도록하고 이용자의 브라우저에서는 원래의 파일명으로 보이도록 해야한다
    	   	디비 컬럼에는 파일번호 / 이용자 아이디 / 업로드날짜 / 원래 파일명 / 변경된 파일명 등이 필요하다.
    	   	파일번호를 이용하여 다운로드 파일명이 연결되도록 하면 된다.
    	   	<a href="DawnloadServlet?fileNum=5">원래의 파일명</a>
    	   	원래의 파일명  <%= filename?? 닫기>
    	*/
    	String orginFn = fileName; //원래 파일
    	String changedFn = fileName+new java.util.Date().getTime(); //가짜이름
    	//두개를 디비에 보관한다.
       }
       item.write(savedFile);// 지정 경로에 파일을 저장함
       // item.write(changedFn);
       out.println("<tr><td><b>파일저장 경로:</b></td></tr><tr><td><b>"+savedFile+"</td></tr>");
       out.println("<tr><td><b><a href=\"DownloadServlet?file="+fileName+"\">"+fileName+"</a></td></tr>");
    } catch (Exception e) {
       out.println("서버에 파일 저장중 에러: "+e);
      }
   }
  }
 } 
%>
</table>
</center>
</body></html>
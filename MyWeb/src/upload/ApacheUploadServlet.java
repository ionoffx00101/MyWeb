package upload;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;
import org.apache.commons.io.*;

public class ApacheUploadServlet extends HttpServlet {
 private static final long serialVersionUID = 1L;

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  request.setCharacterEncoding("utf-8");
 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
  if (!isMultipart) {
  }else {
     FileItemFactory factory = new DiskFileItemFactory();
     ServletFileUpload upload = new ServletFileUpload(factory);
     List items = null;
     try {
        items = upload.parseRequest(request);
     } catch (FileUploadException e) {
      e.printStackTrace();
     }
     Iterator itr = items.iterator();
     UploadInfo uploadInfo = new UploadInfo();
     while (itr.hasNext()) {
       FileItem item = (FileItem) itr.next();
       if (item.isFormField()) { // 파일이 아닌 폼필드에 입력한 내용을 가져옴.
         if(item!=null && item.getFieldName().equals("name")) {
           String name = item.getString("utf-8");//form field 안에 입력한 데이터를 가져옴
           uploadInfo.setUserName(name);
           //System.out.println("전송자:"+name+"<br>"); 
         }else if(item!=null && item.getFieldName().equals("desc")) {
           String desc = item.getString("utf-8");

           uploadInfo.setDesc(desc);
           //System.out.println("파일에 대한 설명:"+desc+"<br>");
         }
      } else { // 폼 필드가 아니고 파일인 경우
     try {
        String itemName = item.getName();//로컬 시스템 상의 파일경로 및 파일 이름 포함
        if(itemName==null || itemName.equals("")) continue;
        String fileName = FilenameUtils.getName(itemName);// 경로없이 파일이름만 추출함
        // 파일이름 중복검사 및 그에 따른 새이름 설정
        File f = checkExist(fileName);
        item.write(f);// 지정 경로에 파일을 저장함
        uploadInfo.getFileMap().put(fileName, f);
     } catch (Exception e) { e.printStackTrace(); }
    } // end of else
   }  // end of while
   request.setAttribute("uploadInfo", uploadInfo);
   request.getRequestDispatcher("/uploadResult.jsp").forward(request, response);
  }   // end of else
 }  // end of doPost
 
 /* 이미 동일이름의 파일이 존재하면 새로 저장되는 파일의 이름 변경 */
 private File checkExist(String fileName){
       File f = new File("C:/upload/"+fileName);
       if(f.exists()) {
        StringBuffer sb = new StringBuffer(fileName);
        sb.insert(sb.lastIndexOf("."),"-"+new Date().getTime());
        f = new File("C:/upload/"+sb.toString());
       }
  return f;
 }

}
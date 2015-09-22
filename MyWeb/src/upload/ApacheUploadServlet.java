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
       if (item.isFormField()) { // ������ �ƴ� ���ʵ忡 �Է��� ������ ������.
         if(item!=null && item.getFieldName().equals("name")) {
           String name = item.getString("utf-8");//form field �ȿ� �Է��� �����͸� ������
           uploadInfo.setUserName(name);
           //System.out.println("������:"+name+"<br>"); 
         }else if(item!=null && item.getFieldName().equals("desc")) {
           String desc = item.getString("utf-8");

           uploadInfo.setDesc(desc);
           //System.out.println("���Ͽ� ���� ����:"+desc+"<br>");
         }
      } else { // �� �ʵ尡 �ƴϰ� ������ ���
     try {
        String itemName = item.getName();//���� �ý��� ���� ���ϰ�� �� ���� �̸� ����
        if(itemName==null || itemName.equals("")) continue;
        String fileName = FilenameUtils.getName(itemName);// ��ξ��� �����̸��� ������
        // �����̸� �ߺ��˻� �� �׿� ���� ���̸� ����
        File f = checkExist(fileName);
        item.write(f);// ���� ��ο� ������ ������
        uploadInfo.getFileMap().put(fileName, f);
     } catch (Exception e) { e.printStackTrace(); }
    } // end of else
   }  // end of while
   request.setAttribute("uploadInfo", uploadInfo);
   request.getRequestDispatcher("/uploadResult.jsp").forward(request, response);
  }   // end of else
 }  // end of doPost
 
 /* �̹� �����̸��� ������ �����ϸ� ���� ����Ǵ� ������ �̸� ���� */
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
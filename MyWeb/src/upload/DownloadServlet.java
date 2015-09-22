package upload;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/upload/DownloadServlet")
public class DownloadServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {

 protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  response.setContentType("application/octet-stream;charset=utf-8");
   String fileName = request.getParameter("file");
   //�Ʒ�ó�� attachment �� ����ϸ� �������� ������ �ٿ�ε� â�� ���� ���ϸ��� �����ش�.
   response.setHeader("Content-Disposition", "attachment;filename="+fileName+";");

   ServletOutputStream sos = null;
   try{
    sos = response.getOutputStream();
   }catch(Exception e){e.printStackTrace();}

   //������ ���� ��Ʈ���� ���� �������� ����Ʈ �����͸� �������ָ� �ȴ�.
   FileInputStream fio = null;
   fileName = new String(fileName.getBytes("8859_1"),"utf-8");
   File inFile = new File("C:/upload/"+fileName);
   byte[] buf = null;
   if(inFile.exists()) {
      int len = (int)inFile.length();
      buf = new byte[len];
   }
   fio = new FileInputStream("C:/upload/"+fileName);
   fio.read(buf);
   sos.write(buf);
   sos.flush();
   fio.close();
   sos.close();
 }         
}
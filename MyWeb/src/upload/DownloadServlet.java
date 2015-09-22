package upload;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/upload/DownloadServlet")
public class DownloadServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {

 protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  response.setContentType("application/octet-stream;charset=utf-8");
   String fileNum = request.getParameter("file");
   
   System.out.println(fileNum);
   AttachedDAO dao = new AttachedDAO();
   AttachedVO vo = dao.getFilename(Integer.parseInt(fileNum));
   
   String fileName = vo.getOriginfn();
   String chfileName = vo.getSavedfn();
   
    System.out.println(fileName);
    System.out.println(chfileName);
   //아래처럼 attachment 를 사용하면 브라우저는 무조건 다운로드 창을 띄우고 파일명을 보여준다.
   String utffileName = new String(fileName.getBytes("utf-8"),"8859_1");
   response.setHeader("Content-Disposition", "attachment;filename="+utffileName+";");

   ServletOutputStream sos = null;
   try{
    sos = response.getOutputStream();
   }catch(Exception e){e.printStackTrace();}

   //다음과 같이 스트림을 열고 브라우저에 바이트 데이터를 전송해주면 된다.
   FileInputStream fio = null;
   //chfileName = new String(chfileName.getBytes("8859_1"),"utf-8");
if(chfileName!=null){
	fileName=chfileName;
}

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
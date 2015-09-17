package org.java.Emp_info;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;
/**
 * Servlet implementation class Login_Servelet
 */
@WebServlet("/Emp_info_Servelet")
public class Emp_info_Servelet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String cmd = request.getParameter("cmd");
		Emp_info_Service svc = new Emp_info_Service(request);
		String viewPath = null;
		if(cmd==null || cmd.equals("")) {cmd = "index";}
		
		System.out.println(cmd);
		try {
			Method method = svc.getClass().getMethod(cmd);
			
			viewPath = (String) method.invoke(svc);
			request.getRequestDispatcher(viewPath).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

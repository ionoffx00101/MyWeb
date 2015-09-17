package org.java.login_check;

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
@WebServlet("/Login_Servelet")
public class Login_Servelet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String cmd = request.getParameter("cmd");
		Login_Service svc = new Login_Service(request);
		String viewPath = null;
		
		try {
			Method method = svc.getClass().getMethod(cmd);
			viewPath = (String) method.invoke(svc);
			request.getRequestDispatcher(viewPath).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

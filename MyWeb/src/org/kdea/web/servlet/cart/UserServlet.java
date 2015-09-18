package org.kdea.web.servlet.cart;

import java.io.IOException;
import java.lang.reflect.Method;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String cmd = request.getParameter("cmd");
		UserService svc = new UserService(request);
		String viewPath = null;
		
		if(cmd==null || cmd.equals("")) cmd = "loginForm";
		
		try {
			Method method = svc.getClass().getMethod(cmd);
			viewPath = (String) method.invoke(svc);
			request.getRequestDispatcher(viewPath).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

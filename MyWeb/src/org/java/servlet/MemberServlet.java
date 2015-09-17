package org.java.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberServlet
 */
@WebServlet("/MS")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("euc-kr");
		String cmd = request.getParameter("cmd");
		
		if (cmd == null || cmd.equals("")) {
			cmd = "joinPage";
		}
       
		exec(cmd, request, response);
	}
	
	protected void exec(String cmd, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		MemberService ms = new MemberService(request);
		String viewPath = null;

		try {
			Method method = ms.getClass().getMethod(cmd);
			viewPath = (String) method.invoke(ms);
			request.getRequestDispatcher(viewPath).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

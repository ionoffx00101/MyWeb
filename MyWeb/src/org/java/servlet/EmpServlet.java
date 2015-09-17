package org.java.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmpServlet
 */
@WebServlet("/ES")
public class EmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String cmd = request.getParameter("cmd");

		if (cmd == null || cmd.equals("")) {
			cmd = "list";
		}

		exec(cmd, request, response);

	}

	protected void exec(String cmd, HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		EmpService es = new EmpService(request);
		String viewPath = null;

		try {
			Method method = es.getClass().getMethod(cmd);
			viewPath = (String) method.invoke(es);
			request.getRequestDispatcher(viewPath).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

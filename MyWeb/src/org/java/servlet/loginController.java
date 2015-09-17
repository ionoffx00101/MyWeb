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
@WebServlet("/LC")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		System.out.println(id + " " + pass);
		boolean isOk = false;

		if (id != null && !id.equals("") && pass != null && !pass.equals("")) {
			isOk=true;
		}
		
		request.setAttribute("ok", isOk);
		request.getRequestDispatcher("/jquery/login2.jsp").forward(request, response);

	}

}

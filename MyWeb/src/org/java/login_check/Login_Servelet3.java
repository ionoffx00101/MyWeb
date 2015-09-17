package org.java.login_check;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login_Servelet
 */
@WebServlet("/Login_Check")
public class Login_Servelet3 extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void service(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("euc-kr");
			EmpDAO dao = new EmpDAO();
			String id = request.getParameter("id");
			boolean isOk=true;
			System.out.println(id);
			
			if (id != null && !id.equals("")) {
				int daoid = Integer.parseInt(id);
				isOk = dao.checkEmpID(daoid);
			}
			
			
			request.setAttribute("isOk", isOk);
			request.getRequestDispatcher("/login_check/login_result.jsp").forward(request, response);

		}

	}


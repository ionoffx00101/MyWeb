package board;

import java.io.IOException;
import java.lang.reflect.Method;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/Board")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	
			String cmd = request.getParameter("cmd");

			if (cmd == null || cmd.equals("")) {
				cmd = "list";
			}

			exec(cmd, request, response);

		}

		protected void exec(String cmd, HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			BoardService es = new BoardService(request);
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

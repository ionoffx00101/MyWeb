package org.kdea.web.servlet.cart;

import java.io.IOException;
import java.lang.reflect.Method;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/User/*")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String[] cmdArr= parseUri(request);
		String cmd = cmdArr[1];
		
		if(cmd==null || cmd.equals("*")) cmd = "login";
		
		try {
			UserService ls = new UserService(request);
			Class<?>[] clsArgs = new Class[0];
			String viewPath = null;
			if(cmdArr.length==2){
				Method m = ls.getClass().getMethod(cmd, clsArgs);
				viewPath = (String) m.invoke(ls);
			}else if(cmdArr.length==3){
				clsArgs = new Class[1];
				clsArgs[0]=String.class;
				Method m =ls.getClass().getMethod(cmd, clsArgs);
				viewPath = (String)m.invoke(ls, new String[]{cmdArr[2]});
			}
			System.out.println("viewpath" +viewPath);
			request.getRequestDispatcher(viewPath).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private String[] parseUri(HttpServletRequest request) {
		String uri=request.getRequestURI();
		String ctxPath=request.getContextPath();
		String uri2=uri.replace(ctxPath+"/", "");//user/'
		return uri2.split("/");
	}

}

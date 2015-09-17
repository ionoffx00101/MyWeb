package org.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SampleServlet
 */

// Tomcat이 실행
@WebServlet("/ss")
public class SampleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//이용자가 전송한 숫자 접수
		String sDan = request.getParameter("dan");
		
		
		//이용자가 전송한 숫자를 이용하여 구구단을 작성한다
		GuguService gs= new GuguService();
		String gugu= gs.crateGugu(sDan);
		
		//view 콤포넌트인 JSP에게 구구단 출력을 위임한다.
		request.setAttribute("gugu", gugu);
		request.getRequestDispatcher("/gugu.jsp").forward(request, response);
		

	}
}

/*웹 클라이언트가 숫자를 전송하면 해당숫자의 회원번호를 검색하여 그 회원의 이름, 번호, 이메일을 화면에 출력하는 기능을 mvc 패턴으로 작성하시오
MemberServlet, MemberService, meber.jsp 로 구성할 것
*/
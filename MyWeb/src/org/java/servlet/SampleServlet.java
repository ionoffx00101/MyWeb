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

// Tomcat�� ����
@WebServlet("/ss")
public class SampleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//�̿��ڰ� ������ ���� ����
		String sDan = request.getParameter("dan");
		
		
		//�̿��ڰ� ������ ���ڸ� �̿��Ͽ� �������� �ۼ��Ѵ�
		GuguService gs= new GuguService();
		String gugu= gs.crateGugu(sDan);
		
		//view ������Ʈ�� JSP���� ������ ����� �����Ѵ�.
		request.setAttribute("gugu", gugu);
		request.getRequestDispatcher("/gugu.jsp").forward(request, response);
		

	}
}

/*�� Ŭ���̾�Ʈ�� ���ڸ� �����ϸ� �ش������ ȸ����ȣ�� �˻��Ͽ� �� ȸ���� �̸�, ��ȣ, �̸����� ȭ�鿡 ����ϴ� ����� mvc �������� �ۼ��Ͻÿ�
MemberServlet, MemberService, meber.jsp �� ������ ��
*/
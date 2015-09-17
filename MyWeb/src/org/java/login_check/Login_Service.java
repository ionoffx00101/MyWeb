package org.java.login_check;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;


public class Login_Service {
	HttpServletRequest request;

	public Login_Service(HttpServletRequest request) {
		this.request = request;
	}
	

	public String Check_num() {
		
		try {
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
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return "/login_check/login_result.jsp";
	}
	
}

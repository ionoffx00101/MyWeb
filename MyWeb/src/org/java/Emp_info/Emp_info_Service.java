package org.java.Emp_info;

import java.io.UnsupportedEncodingException;
import java.util.*;
import javax.servlet.http.HttpServletRequest;

public class Emp_info_Service {
	HttpServletRequest request;

	public Emp_info_Service(HttpServletRequest request) {
		this.request = request;
	}

	public String index() {

		try {
			request.setCharacterEncoding("euc-kr");

			EmpDAO dao = new EmpDAO();
			
			List<EmpVO> vo = dao.getEmpName();
			
			request.setAttribute("namelist", vo);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/emp_info/Emp_info_index.jsp";
	}
	public String full_info() {
		
		String name = request.getParameter("id");
		
		EmpDAO dao = new EmpDAO();
		EmpVO info = dao.getEmpinfo(name);
		
		request.setAttribute("nameinfo", info);
		return "/emp_info/Emp_name_data.jsp";
	}

}

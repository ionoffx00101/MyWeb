package org.kdea.web.servlet.cart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class UserService {

	private HttpServletRequest request;
	private HttpSession session;

	public UserService(HttpServletRequest request) {
		this.request = request;
	}

	public String login() {

		return "/0918_servelt_cart/login.jsp";
	}

	public String user_ok() {
		UserVO vo = new UserVO();
		String id = (String) request.getAttribute("id");
		String name = (String) request.getAttribute("name");
		vo.setId(id);
		vo.setName(name);
		
		boolean check= new LoginService().login(vo);
		
session.setAttribute("check", check);
System.out.println("dd"+check);
		return "/0918_servelt_cart/login_check.jsp";
	}

}

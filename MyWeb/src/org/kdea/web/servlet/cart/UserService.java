package org.kdea.web.servlet.cart;

import javax.servlet.http.HttpServletRequest;

public class UserService {

	private HttpServletRequest request;
	
	public UserService(HttpServletRequest request) {
		this.request = request;
	}

	public String loginForm() {
		return "/0918_servelt_cart/login.jsp";
	}

	public String user_ok() {
		request
		
	if(true && true){
		
		
		
		return "/0918_servelt_cart/login_check.jsp";
	}
	
	public String booklist() {
		

		return "/0918_servelt_cart/books.jsp";
	}
}

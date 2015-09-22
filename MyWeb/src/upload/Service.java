package upload;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Service {

	private HttpServletRequest request;
	private HttpSession session;

	public Service(HttpServletRequest request) {
		this.request = request;
	}

	public String login() {

		return "/0918_servelt_cart/login.jsp";
	}

	

}

package org.kdea.web.servlet.cart;

import javax.servlet.http.HttpServletRequest;

public class LoginService {
HttpServletRequest request;


public HttpServletRequest getRequest() {
	return request;
}


public void setRequest(HttpServletRequest request) {
	this.request = request;
}


public boolean login(UserVO user){
	UserVO user = new UserVO();
	UserDAO dao = new UserDAO();
user = (UserVO) request.getAttribute("user");
	
	boolean check =false;
	
	if (user.getId()!=null){
	check = dao.checkEmp(Integer.parseInt(user.getId()),user.getName());
	//user.setCheck(check);
	}	
	
	return check;
}

}
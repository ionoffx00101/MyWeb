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
	
	UserDAO dao = new UserDAO();
System.out.println(user.getId()+"getid");
	boolean check =false;
	
	if (user.getId()!=null){
	check = dao.checkEmp(Integer.parseInt(user.getId()),user.getName());
	}	
	System.out.println("123"+check);
	return check;
}

}
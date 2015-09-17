package org.java.webcontent;
import org.java.servlet.*;
import javax.servlet.http.*;

public class LoginService_c{
	
	private HttpServletRequest request;
	private HttpServletResponse response;
	
	public void LoginService(HttpServletRequest request,HttpServletResponse response){
		this.request = request;
		this.response = response;
	}
	/*id 를 이용해서 디비에서 회원인증을 수행하고 결과를 제이슨으로 리턴
	@return 회원인증결과 json 문자열
	*/
	public String ajaxLogin(){
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		boolean ok = false;
		ok = new EmpDAO().bgetEmp(Integer.parseInt(id),name);
		if(ok){
		Cookie c = new Cookie("loginSuccess", "true");
		c.setMaxAge(0);
		response.addCookie(c);
		}
		String jsonResult=String.format("\"id\":\"%s\",\"name\":\"%s\",\"ok\":\"%b\"",id,name,ok);
		return jsonResult;
	}
}

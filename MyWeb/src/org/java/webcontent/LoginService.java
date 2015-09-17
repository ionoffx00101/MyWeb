package org.java.webcontent;
import org.java.servlet.*;
import javax.servlet.http.HttpServletRequest;

public class LoginService{
	
	private HttpServletRequest request;
	
	public void LoginService(HttpServletRequest request){
		this.request = request;
	}
	/*id �� �̿��ؼ� ��񿡼� ȸ�������� �����ϰ� ����� ���̽����� ����
	@return ȸ��������� json ���ڿ�
	*/
	public String ajaxLogin(){
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		boolean ok = false;
		ok = new EmpDAO().bgetEmp(Integer.parseInt(id),name);
		if(ok){
			request.getSession().setAttribute("id", id);
		}
		String jsonResult=String.format("\"id\":\"%s\",\"name\":\"%s\",\"ok\":\"%b\"",id,name,ok);
		return jsonResult;
	}
}

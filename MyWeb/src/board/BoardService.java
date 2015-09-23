package board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class BoardService {
	
	private HttpServletRequest request;
	private HttpSession session;

	public BoardService(HttpServletRequest request) {
		this.request = request;
	}

	public String inputForm() {

		return "/board/inputForm.jsp";
	}

}

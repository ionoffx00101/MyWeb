package board;

import java.sql.Date;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class BoardService {
	
	private HttpServletRequest request;
	private HttpSession session;

	public BoardService(HttpServletRequest request) {
		this.request = request;
	}

	public String list() {
		
		BoardDAO dao = new BoardDAO();
		
		//List<BoardVO> list = dao.getAllBoard();
		//request.setAttribute("list", list);
		return "/board/list.jsp";
	}
	
	public String inputForm() {
		
		return "/board/inputForm.jsp";
	}
	
	public boolean postsWrite(){
		System.out.println("¼­ºñ½º"+request.getParameter("title"));
			BoardVO vo = new BoardVO();
			vo.setTitle(request.getParameter("title"));
			vo.setWdate(Date.valueOf(request.getParameter("pubdate")));

		
		
		return false;
	}

}

package board;

import java.sql.*;
import java.util.*;

public class BoardDAO  extends AbstractDAO {

	/*public List<BoardVO> getAllBoard() {
			conn = getConn();
			String sql = 
				"SELECT * FROM "+
				"( "+
					"SELECT t1.*, TRUNC((ROWNUM-1)/3)+1 page FROM "+
					"( "+
						"SELECT empno, "+
						"LPAD(' ', (LEVEL-1)*4,'¡¡') || DECODE(LEVEL,1,'','¦Æ ')||ename as ename, "+
						"hiredate, sal, deptno, mgr "+
						"FROM emp2 "+
						"START WITH ename='KING' CONNECT BY PRIOR Num=Ref "+
						"order siblings by NUM "+
					") t1 "+
				") "+
				"WHERE page=?";
			try {
				pstmt = conn.prepareStatement(sql);
				//pstmt.setInt(1, page);
				rs = pstmt.executeQuery();
				List<BoardVO> list = new ArrayList<>();
				while(rs.next()) {
					BoardVO vo = new BoardVO();
					vo.setNum(rs.getInt("NUM"));
					vo.setTitle(rs.getString("Title"));
					vo.setContents(rs.getString("Contents"));
					vo.setWdate(rs.getDate("Wdate"));
					vo.setAuthor(rs.getString("Author"));
					vo.setHits(rs.getInt("Hits"));
					vo.setRef(rs.getInt("Ref"));
					vo.setAttnum(rs.getInt("Attnum"));
					list.add(vo);
				}
				return list;
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				closeAll();
			}
		
		
		return null;
	}
*/
	
	
}

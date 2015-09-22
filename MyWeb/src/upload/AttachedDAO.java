package upload;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.java.servlet.EmpVO;

public class AttachedDAO extends AbstractDAO{

	public boolean addFile(String orginFn,String changedFn,long len) {
		conn = getConn();
		String sql = "insert INTO ATTACHEDFILE (num, originfn ,savedfn,len) values (A_SEQ.NEXTVAL,?,?,?)";
/*		"insert INTO ATTACHEDFILE (num, originfn ,savedfn,len) values (A_SEQ.NEXTVAL,?,?,?)";*/
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, orginFn);
			pstmt.setString(2, changedFn);
			pstmt.setLong(3, len);
			pstmt.executeUpdate();

			return true;
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			closeAll();
		}
		return false;
	}
	
	public List<AttachedVO> allFile() {
		conn = getConn();
		String sql = "SELECT * FROM AttachedFile";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			List<AttachedVO> list = new ArrayList<>();
			while (rs.next()) {
				AttachedVO vo = new AttachedVO();
				vo.setNum(rs.getInt("NUM"));
				vo.setOriginfn(rs.getString("originfn"));
				vo.setSavedfn(rs.getString("Savedfn"));
				vo.setLen(rs.getLong("LEN"));
				list.add(vo);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return null;
	}
	
	public AttachedVO getFilename(int num) {
		
		conn = getConn();
		String sql = "SELECT ORIGINFN,SAVEDFN FROM AttachedFile where num=?"; // 넘 바꾸기

		AttachedVO vo = new AttachedVO();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
			vo.setOriginfn(rs.getString("originfn"));
			vo.setSavedfn(rs.getString("Savedfn"));
			}
			return vo;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return null;
	}
}
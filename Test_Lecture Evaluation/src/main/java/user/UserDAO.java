package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DatabaseUtil;

// UserDAO -> 실제로 DB와 통신하는 부분
// 생성자는 DB와 연동하는 부분임, 나머지 함수들은 DB통신하는 유의미한 함수들임

// login() : 아이디와 비밀번호를 받아서, 로그인을 시도하는 함수, 결과는 정수형
// join() : 사용자의 정보를 입력받아서 회원가입 수행, 결과는 정수형

public class UserDAO {
	public int login (String userID, String userPassword) {
		String sql = "SELECT userPassword FROM user Where userID = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword))
					return 1; //로그인 성공
				else
					return 0; //비밀번호 불일치
			}
			return -1; //아이디 존재 x
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try { if(conn != null) conn.close(); }
			catch (Exception e) { e.printStackTrace(); }
			try { if(pstmt != null) pstmt.close(); }
			catch (Exception e) { e.printStackTrace(); }
			try { if(rs != null) rs.close(); }
			catch (Exception e) { e.printStackTrace(); }
		}
		return -2; //데이터 베이스 오류
	}


	public int join (UserDTO user) {
		String sql = "INSERT INTO USER VALUES (?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try { if(conn != null) conn.close(); }
			catch (Exception e) { e.printStackTrace(); }
			try { if(pstmt != null) pstmt.close(); }
			catch (Exception e) { e.printStackTrace(); }
			try { if(rs != null) rs.close(); }
			catch (Exception e) { e.printStackTrace(); }
		}
		return -1; //회원가입 실패(중복된 아이디)
	}
}
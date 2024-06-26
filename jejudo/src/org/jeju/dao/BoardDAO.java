package org.jeju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.jeju.dto.Board;
import org.jeju.dto.Coment;
import org.jeju.dto.Member;

public class BoardDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public List<Board> getBoardList() {
		List<Board> boardList = new ArrayList<>();
		
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_BOARD);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Board board = new Board(rs.getInt("no"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("resdate"),
						rs.getInt("visited"),
						rs.getString("aid"));
				boardList.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return boardList;
	}
	
	public Board getBoard(int no) {
		Board board = new Board();
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.VISITED_UPDATE_BOARD);
			pstmt.setInt(1, no);
			int cnt = pstmt.executeUpdate();
			pstmt = null;
			
			pstmt = con.prepareStatement(SqlLang.SELECT_BOARD_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				board.setNo(rs.getInt("no"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setResdate(rs.getString("resdate"));
				board.setVisited(rs.getInt("visited"));
				board.setAid(rs.getString("aid"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return board;
	}
	
	public Board getBoard2(int no) {
		Board board = new Board();
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_BOARD_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				board.setNo(rs.getInt("no"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setResdate(rs.getString("resdate"));
				board.setVisited(rs.getInt("visited"));
				board.setAid(rs.getString("aid"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return board;
	}
	
	public int insBoard(Board board) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.INSERT_BOARD);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getAid());
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editBoard(Board board) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.UPDATE_BOARD);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setInt(3, board.getNo());
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delBoard(int no) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.DELETE_BOARD);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	public List<Coment> getComentList(int no) {
		List<Coment> comentList = new ArrayList<>();
		
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_COMENT);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Coment coment = new Coment(rs.getInt("cno"),
						rs.getInt("no"),
						rs.getString("content"),
						rs.getString("resdate"),
						rs.getString("aid"));
				comentList.add(coment);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return comentList;
	}
	
	public Coment getComent(int cno) {
		Coment coment = new Coment();
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_COMENT_BYCNO);
			pstmt.setInt(1, cno);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				coment.setCno(cno);
				coment.setNo(rs.getInt("no"));
				coment.setContent(rs.getString("content"));
				coment.setResdate(rs.getString("resdate"));
				coment.setAid(rs.getString("aid"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return coment;
	}
	
	public int insComent(Coment coment) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.INSERT_COMENT);
			pstmt.setInt(1, coment.getNo());
			pstmt.setString(2, coment.getContent());
			pstmt.setString(3, coment.getAid());
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}

	public int delComentCno(int cno) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.DELETE_COMENT_CNO);
			pstmt.setInt(1, cno);
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delComentNo(int no) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.DELETE_COMENT_NO);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	public boolean checkComent(int no) {
		boolean ck = false;
		Coment coment = new Coment();
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_COMENT_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ck = true;
			} else {
				ck = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		return ck;
	}
}

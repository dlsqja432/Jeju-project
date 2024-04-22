package org.jeju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.jeju.dto.Qna;

public class QnaDAO {
//	Connection con = null;
//	PreparedStatement pstmt = null;
//	ResultSet rs = null;
//
//	public List<Qna> getLastQnaList() {
//		List<Qna> qnaList = new ArrayList<>();
//		
//		MySQLDB mysql = new MySQLDB();
//		try {
//			con = mysql.connect();
//			pstmt = con.prepareStatement(SqlLang.LATEST_QNA);
//			rs = pstmt.executeQuery();
//			
//			while(rs.next()) {
//				Qna qna = new Qna(rs.getInt("no"),
//						rs.getInt("plevel"),
//						rs.getInt("parno"),
//						rs.getString("title"),
//						rs.getString("content"),
//						rs.getString("resdate"),
//						rs.getInt("visited"),
//						rs.getString("aid"));
//				qnaList.add(qna);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			mysql.close(con, pstmt, rs);
//		}
//		
//		return qnaList;
//	}
//	
//	public List<Qna> getQnaList() {
//		List<Qna> qnaList = new ArrayList<>();
//		
//		OracleDB oracle = new OracleDB();
//		try {
//			con = oracle.connect();
//			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_QNA);
//			rs = pstmt.executeQuery();
//			
//			while(rs.next()) {
//				Qna qna = new Qna(rs.getInt("no"),
//						rs.getInt("plevel"),
//						rs.getInt("parno"),
//						rs.getString("title"),
//						rs.getString("content"),
//						rs.getString("resdate"),
//						rs.getInt("visited"),
//						rs.getString("aid"));
//				qnaList.add(qna);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			oracle.close(con, pstmt, rs);
//		}
//		
//		return qnaList;
//	}
//	
//	public Qna getQna(int no) {
//		Qna qna = new Qna();
//		OracleDB oracle = new OracleDB();
//		try {
//			con = oracle.connect();
//			pstmt = con.prepareStatement(SqlLang.VISITED_UPDATE_QNA);
//			pstmt.setInt(1, no);
//			int cnt = pstmt.executeUpdate();
//			pstmt = null;
//			
//			pstmt = con.prepareStatement(SqlLang.SELECT_QNA_BYNO);
//			pstmt.setInt(1, no);
//			rs = pstmt.executeQuery();
//			
//			if(rs.next()) {
//				qna.setNo(rs.getInt("no"));
//				qna.setPlevel(rs.getInt("plevel"));
//				qna.setParno(rs.getInt("parno"));
//				qna.setTitle(rs.getString("title"));
//				qna.setContent(rs.getString("content"));
//				qna.setResdate(rs.getString("resdate"));
//				qna.setVisited(rs.getInt("visited"));
//				qna.setAid(rs.getString("aid"));
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			oracle.close(con, pstmt, rs);
//		}
//		
//		return qna;
//	}
//	
//	public Qna getQna2(int no) {
//		Qna qna = new Qna();
//		OracleDB oracle = new OracleDB();
//		try {
//			con = oracle.connect();
//			pstmt = con.prepareStatement(SqlLang.SELECT_QNA_BYNO);
//			pstmt.setInt(1, no);
//			rs = pstmt.executeQuery();
//			
//			if(rs.next()) {
//				qna.setNo(rs.getInt("no"));
//				qna.setPlevel(rs.getInt("plevel"));
//				qna.setParno(rs.getInt("parno"));
//				qna.setTitle(rs.getString("title"));
//				qna.setContent(rs.getString("content"));
//				qna.setResdate(rs.getString("resdate"));
//				qna.setVisited(rs.getInt("visited"));
//				qna.setAid(rs.getString("aid"));
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			oracle.close(con, pstmt, rs);
//		}
//		
//		return qna;
//	}
//	
//	public int insQuestion(Qna qna) {
//		int cnt = 0;
//		OracleDB oracle = new OracleDB();
//		try {
//			con = oracle.connect();
//			pstmt = con.prepareStatement(SqlLang.INSERT_QUESTION);
//			pstmt.setString(1, qna.getTitle());
//			pstmt.setString(2, qna.getContent());
//			pstmt.setString(3, qna.getAid());
//			cnt = pstmt.executeUpdate();
//			
//			pstmt = null;
//			pstmt = con.prepareStatement(SqlLang.UPDATE_PARNO_QUESTION);
//			cnt = cnt + pstmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			oracle.close(con, pstmt);
//		}
//		return cnt;
//	}
//	
//	public int insAnswer(Qna qna) {
//		int cnt = 0;
//		OracleDB oracle = new OracleDB();
//		try {
//			con = oracle.connect();
//			pstmt = con.prepareStatement(SqlLang.INSERT_ANSWER);
//			pstmt.setInt(1, qna.getParno());
//			pstmt.setString(2, qna.getTitle());
//			pstmt.setString(3, qna.getContent());
//			pstmt.setString(4,qna.getAid());
//			cnt = pstmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			oracle.close(con, pstmt);
//		}
//		return cnt;
//	}
//
//	public int editProQna(Qna qna) {
//		int cnt = 0;
//		OracleDB oracle = new OracleDB();
//		try {
//			con = oracle.connect();
//			pstmt = con.prepareStatement(SqlLang.UPDATE_QNA);
//			pstmt.setString(1, qna.getTitle());
//			pstmt.setString(2, qna.getContent());
//			pstmt.setInt(3, qna.getNo());
//			cnt = pstmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			oracle.close(con, pstmt);
//		}
//		return cnt;
//	}
//	
//	public int delQuestion(int parno) {
//		int cnt = 0;
//		OracleDB oracle = new OracleDB();
//		try {
//			con = oracle.connect();
//			pstmt = con.prepareStatement(SqlLang.DELETE_QUESTION);
//			pstmt.setInt(1, parno);
//			cnt = pstmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			oracle.close(con, pstmt);
//		}
//		return cnt;
//	}
//	
//	public int delAnswer(int no) {
//		int cnt = 0;
//		OracleDB oracle = new OracleDB();
//		try {
//			con = oracle.connect();
//			pstmt = con.prepareStatement(SqlLang.DELETE_ANSWER);
//			pstmt.setInt(1, no);
//			cnt = pstmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			oracle.close(con, pstmt);
//		}
//		return cnt;
//	}
}


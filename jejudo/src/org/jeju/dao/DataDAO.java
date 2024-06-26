package org.jeju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.jeju.dto.Data;
import org.jeju.dto.Notice;

public class DataDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<Data> getLatestDataList(){
		List<Data> dataList = new ArrayList<>();
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.LATEST_DATA);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Data data = new Data(rs.getInt("no"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("datafile"),
						rs.getString("resdate"),
						rs.getInt("visited"));
				dataList.add(data);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		return dataList;
	}

	public List<Data> getDataList() {
		List<Data> dataList = new ArrayList<>();
		
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_DATA);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Data data = new Data(rs.getInt("no"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("datafile"),
						rs.getString("resdate"),
						rs.getInt("visited"));
				dataList.add(data);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return dataList;
	}
	
	public Data getData(int no) {
		Data data = new Data();
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.VISITED_UPDATE_DATA);
			pstmt.setInt(1, no);
			int cnt = pstmt.executeUpdate();
			pstmt = null;
			
			pstmt = con.prepareStatement(SqlLang.SELECT_DATA_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				data.setNo(rs.getInt("no"));
				data.setTitle(rs.getString("title"));
				data.setContent(rs.getString("content"));
				data.setDatafile(rs.getString("datafile"));
				data.setResdate(rs.getString("resdate"));
				data.setVisited(rs.getInt("visited"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return data;
	}
	
	public Data getData2(int no) {
		Data data = new Data();
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_DATA_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				data.setNo(rs.getInt("no"));
				data.setTitle(rs.getString("title"));
				data.setContent(rs.getString("content"));
				data.setDatafile(rs.getString("datafile"));
				data.setResdate(rs.getString("resdate"));
				data.setVisited(rs.getInt("visited"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return data;
	}
	
	public int insData(Data data) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.INSERT_DATA);
			pstmt.setString(1, data.getTitle());
			pstmt.setString(2, data.getContent());
			pstmt.setString(3, data.getDatafile());
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}

	public int editProData(Data data) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.UPDATE_DATA);
			pstmt.setString(1, data.getTitle());
			pstmt.setString(2, data.getContent());
			pstmt.setString(3, data.getDatafile());
			pstmt.setInt(4, data.getNo());
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	public int delData(int no) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.DELETE_DATA);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
}
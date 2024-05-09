package org.jeju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface SqlLang {
	String SELECT_ALL_MEMBER = "select * from member order by id";
	String SELECT_ONE_MEMBER = "select * from member where id=?";
	String INSERT_MEMBER = "insert into member values(?,?,?,?,?,default,?,?)";
	String UPDATE_MEMBER = "update member set pw=?,name=?,email=?,tel=? where id=?";
	String DELETE_MEMBER = "delete from member where id=?";
	
	String LATEST_NOTICE = "select * from notice order by no desc limit 5";
	String SELECT_ALL_NOTICE = "select * from notice order by no desc";
	String VISITED_UPDATE_NOTICE = "update notice set visited=visited+1 where no=?";
	String SELECT_NOTICE_BYNO = "select * from notice where no=?";
	String INSERT_NOTICE = "insert into notice (title, content,resdate,visited) values(?,?,default,0)";
	String UPDATE_NOTICE = "update notice set title=?, content=? where no=?";
	String DELETE_NOTICE = "delete from notice where no=?";
	
	String SELECT_ALL_BOARD = "select * from board order by no desc";
	String VISITED_UPDATE_BOARD = "update board set visited=visited+1 where no=?";
	String SELECT_BOARD_BYNO = "select * from board where no=?";
	String INSERT_BOARD = "insert into board(title, content, resdate, visited, aid) values(?,?,default,0,?)";
	String UPDATE_BOARD = "update board set title=?,content=? where no=?";
	String DELETE_BOARD = "delete from board where no=?";
	String SELECT_ALL_COMENT = "select * from coment where no=?";
	String SELECT_COMENT_BYCNO = "select * from coment where cno=?";
	String SELECT_COMENT_BYNO = "select * from coment where no=?";
	String INSERT_COMENT = "insert into coment(no, content, resdate, aid) values(?,?,default,?)";
	String DELETE_COMENT_CNO = "delete from coment where cno=?";
	String DELETE_COMENT_NO = "delete from coment where no=?";
	
	String LATEST_QNA = "select * from qna order by parno desc, plevel asc limit 5";
	String SELECT_ALL_QNA = "select * from qna order by parno desc, plevel asc";
	String VISITED_UPDATE_QNA = "update qna set visited=visited+1 where no=?";
	String SELECT_QNA_BYNO = "select * from qna where no=?";
	String INSERT_QUESTION = "insert into qna(plevel, parno, title, content, resdate, visited, aid) values(1,null,?,?,default,0,?)";
	String UPDATE_PARNO_QUESTION = "UPDATE qna JOIN (SELECT no FROM qna ORDER BY no DESC LIMIT 1) AS sub SET qna.parno = sub.no WHERE qna.no = sub.no";
	String INSERT_ANSWER = "insert into qna(plevel, parno, title, content, resdate, visited, aid) values(2,?,?,?,default,0,?)";
	String UPDATE_QNA = "update qna set title=?, content=? where no=?";
	String DELETE_QUESTION = "delete from qna where parno=?";
	String DELETE_ANSWER = "delete from qna where no=?";
	
	String SELECT_ALL_DATA = "select * from data order by resdate desc";
	String LATEST_DATA = "select * from data order by resdate desc limit 5";
	String VISITED_UPDATE_DATA = "update data set visited=visited+1 where no=?";
	String SELECT_DATA_BYNO = "select * from data where no=?";
	String INSERT_DATA = "insert into data(title,content,datafile,resdate,visited) values(?,?,?,default,0)";
	String UPDATE_DATA = "update data set title=?, content=?, datafile=? where no=?";
	String DELETE_DATA = "delete from data where no=?";
	
	
	
	
	Connection connect();
	void close(Connection con, PreparedStatement pstmt);
	void close(Connection con, PreparedStatement pstmt, ResultSet rs);
}

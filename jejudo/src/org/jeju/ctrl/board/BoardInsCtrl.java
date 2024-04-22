package org.jeju.ctrl.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeju.dao.BoardDAO;
import org.jeju.dto.Board;

@WebServlet("/BoardIns.do")
public class BoardInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardInsCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		HttpSession session = request.getSession();
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String aid = (String) session.getAttribute("sid");
		
		Board board = new Board();
		board.setTitle(title);
		board.setContent(content);
		board.setAid(aid);
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.insBoard(board);
		
		if(cnt > 0) {
			response.sendRedirect("/jejudo/BoardList.do");
		} else {
			response.sendRedirect("/board/board_ins.jsp");
		}
	}
}

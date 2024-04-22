package org.jeju.ctrl.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.BoardDAO;
import org.jeju.dto.Board;

@WebServlet("/BoardList.do")
public class BoardListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		List<Board> boardList = new ArrayList<>();
		BoardDAO dao = new BoardDAO();
		boardList = dao.getBoardList();
		
		request.setAttribute("boardList", boardList);
		RequestDispatcher view = request.getRequestDispatcher("/board/boardList.jsp");
		view.forward(request, response);
	}
}

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
import org.jeju.dto.Coment;

/**
 * Servlet implementation class GetBoardCtrl
 */
@WebServlet("/GetBoard.do")
public class GetBoardCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetBoardCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		BoardDAO dao = new BoardDAO();
		Board board = dao.getBoard(no);
		
		List<Coment> comentList = new ArrayList<>();
		comentList = dao.getComentList(no);
		
		request.setAttribute("board", board);
		request.setAttribute("comentList", comentList);
		
		RequestDispatcher view = request.getRequestDispatcher("/board/getBoard.jsp");
		view.forward(request, response);
	}
}

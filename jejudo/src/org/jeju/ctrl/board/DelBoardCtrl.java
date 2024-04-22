package org.jeju.ctrl.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.BoardDAO;

@WebServlet("/DelBoard.do")
public class DelBoardCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelBoardCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.delBoard(no);
		
		boolean check = false;
		check = dao.checkComent(no);
		
		if(check) {
			cnt = cnt + dao.delComentNo(no);
		}
		
		if(cnt > 0) {
			response.sendRedirect("/jejudo/BoardList.do");
		} else {
			response.sendRedirect("/jejudo/GetBoard.do?no=" + no);
		}
	}
}

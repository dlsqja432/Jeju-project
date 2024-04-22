package org.jeju.ctrl.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.BoardDAO;

@WebServlet("/DelComent.do")
public class DelComentCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelComentCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		int cno = Integer.parseInt(request.getParameter("cno"));
		int no = Integer.parseInt(request.getParameter("no"));
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.delComentCno(cno);
		
		if(cnt > 0) {
			response.sendRedirect("/jejudo/GetBoard.do?no="+no);
		} else {
			response.sendRedirect("/jejudo/GetBoard.do?no="+no);
		}
	}
}

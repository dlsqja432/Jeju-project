package org.jeju.ctrl.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.QnaDAO;

@WebServlet("/DelQuestion.do")
public class DelQuestionCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelQuestionCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		int parno = Integer.parseInt(request.getParameter("parno"));
		
		QnaDAO dao = new QnaDAO();
		int cnt = dao.delQuestion(parno);
		
		if(cnt>0) {
			response.sendRedirect("/jejudo/GetQnaList.do");
		} else {
			response.sendRedirect("/jejudo/GetQna.do?no=" + parno);
		}
	}
}

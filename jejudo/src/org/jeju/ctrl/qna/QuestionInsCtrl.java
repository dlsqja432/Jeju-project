package org.jeju.ctrl.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeju.dao.QnaDAO;
import org.jeju.dto.Qna;

@WebServlet("/QuestionIns.do")
public class QuestionInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QuestionInsCtrl() {
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
		
		Qna qna = new Qna();
		qna.setTitle(title);
		qna.setContent(content);
		qna.setAid(aid);
		
		QnaDAO dao = new QnaDAO();
		int cnt = dao.insQuestion(qna);
		
		if(cnt > 0) {
			response.sendRedirect("/jejudo/GetQnaList.do");
		} else {
			response.sendRedirect("/qna/qna_ins.jsp");
		}
	}
}

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

@WebServlet("/AnswerIns.do")
public class AnswerInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AnswerInsCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		HttpSession session = request.getSession();
		String aid = (String) session.getAttribute("sid");
		
		Qna qna = new Qna();
		qna.setParno(Integer.parseInt(request.getParameter("parno")));
		qna.setTitle(request.getParameter("title"));
		qna.setContent(request.getParameter("content"));
		qna.setAid(aid);
		
		QnaDAO dao = new QnaDAO();
		int cnt = dao.insAnswer(qna);
		
		if(cnt > 0) {
			response.sendRedirect("/jejudo/GetQnaList.do");
		} else {
			response.sendRedirect("/qna/ans_ins.jsp?parno=" + qna.getParno());
		}
	}
}

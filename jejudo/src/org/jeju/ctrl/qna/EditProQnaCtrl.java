package org.jeju.ctrl.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.QnaDAO;
import org.jeju.dto.Qna;

@WebServlet("/EditProQna.do")
public class EditProQnaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProQnaCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		Qna qna = new Qna();
		qna.setNo(no);
		qna.setTitle(request.getParameter("title"));
		qna.setContent(request.getParameter("content"));
		
		QnaDAO dao = new QnaDAO();
		int cnt = dao.editProQna(qna);
		
		if(cnt>0) {
			response.sendRedirect("/jejudo/GetQnaList.do");
		} else {
			response.sendRedirect("/jejudo/GetQna.do?no=" + no);
		}
	}
}

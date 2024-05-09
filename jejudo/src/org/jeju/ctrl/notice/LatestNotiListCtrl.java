package org.jeju.ctrl.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.NoticeDAO;
import org.jeju.dto.Notice;

@WebServlet("/LatestNotiList.do")
public class LatestNotiListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LatestNotiListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html); char-set=UTF-8");
		
		NoticeDAO dao = new NoticeDAO();
		List<Notice> notiList = dao.getLastNoticeList();
		
		request.setAttribute("notiList", notiList);
		RequestDispatcher view = request.getRequestDispatcher("/jejudo");
		view.forward(request, response);
	}
}

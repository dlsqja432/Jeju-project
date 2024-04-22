package org.jeju.ctrl.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.NoticeDAO;
import org.jeju.dto.Notice;

@WebServlet("/NotiIns.do")
public class NotiInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public NotiInsCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html); char-set=UTF-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Notice notice = new Notice();
		notice.setTitle(title);
		notice.setContent(content);
		
		NoticeDAO dao = new NoticeDAO();
		int cnt = dao.insNotice(notice);	
		
		if(cnt > 0) {
			response.sendRedirect("/jejudo/NotiList.do");
		} else {
			response.sendRedirect("/notice/noti_ins.jsp");
		}
	}
}

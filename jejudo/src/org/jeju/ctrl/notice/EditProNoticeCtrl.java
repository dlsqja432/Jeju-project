package org.jeju.ctrl.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.NoticeDAO;
import org.jeju.dto.Notice;

@WebServlet("/EditProNotice.do")
public class EditProNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProNoticeCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html); char-set=UTF-8");
		
		Notice noti = new Notice();
		noti.setNo(Integer.parseInt(request.getParameter("no")));
		noti.setTitle(request.getParameter("title"));
		noti.setContent(request.getParameter("content"));
		
		NoticeDAO dao = new NoticeDAO();
		int cnt = dao.editNotice(noti);
		
		if(cnt > 0) {
			response.sendRedirect("/jejudo/NotiList.do");
		} else {
			response.sendRedirect("/jejudo/EditNotice.do?no=" + noti.getNo());
		}
	}
}

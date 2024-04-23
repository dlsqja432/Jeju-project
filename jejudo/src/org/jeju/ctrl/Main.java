package org.jeju.ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jejudo")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Main() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		String realPath = request.getSession().getServletContext().getRealPath("/");
		application.setAttribute("realPath", realPath);
		application.setAttribute("title", "제주도 소개");
		
//		List<Notice> latestNotiList = new ArrayList<>();
//		List<Qna> latestQnaList = new ArrayList<>();
		
//		request.setAttribute("latestNotiList", latestNotiList);
//		request.setAttribute("latestQnaList", latestQnaList);
//		request.setAttribute("idol1", "./images/idol1.jpg");
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");
		view.forward(request, response);
	}
}
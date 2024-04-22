package org.jeju.ctrl.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.MemberDAO;
import org.jeju.dto.Member;

@WebServlet("/EditMember.do")
public class EditMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditMemberCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		String id = request.getParameter("id");
		MemberDAO dao = new MemberDAO();
		Member member = dao.getMember(id);
		
		request.setAttribute("mem", member);
		RequestDispatcher view = request.getRequestDispatcher("/member/memberInfo.jsp");
		view.forward(request, response);
	}
}

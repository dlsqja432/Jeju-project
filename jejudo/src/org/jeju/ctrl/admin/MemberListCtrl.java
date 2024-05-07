package org.jeju.ctrl.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeju.dao.MemberDAO;
import org.jeju.dto.Member;
import org.jeju.util.AES256;

@WebServlet("/MemberList.do")
public class MemberListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberListCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String loginId = (String) session.getAttribute("sid");
		if(!loginId.equals("admin")) {
			response.sendRedirect("/jejudo");
		}
		
		MemberDAO dao = new MemberDAO();
		
		List<Member> memList = dao.getMemberList();
		
		String key = "%02x";
		for(int i=0; i<memList.size(); i++) {
			try {
				memList.get(i).setPw(AES256.decryptAES256(memList.get(i).getPw(), key));
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
		
		request.setAttribute("memList", memList);
		RequestDispatcher view = request.getRequestDispatcher("/admin/memberList.jsp");
		view.forward(request, response);
	}
}

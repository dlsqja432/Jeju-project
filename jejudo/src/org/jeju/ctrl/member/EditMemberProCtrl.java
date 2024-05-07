package org.jeju.ctrl.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jeju.dao.MemberDAO;
import org.jeju.dto.Member;
import org.jeju.util.AES256;

@WebServlet("/EditMemberPro.do")
public class EditMemberProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditMemberProCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		String id = request.getParameter("id");
		
		HttpSession session = request.getSession();
		session.setAttribute("sname", request.getParameter("name"));
		
		String pw = request.getParameter("pw");
		String key = "%02x";
		try {
			pw = AES256.encryptAES256(pw, key);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		Member mem = new Member(request.getParameter("id"),
				pw,
				request.getParameter("name"),
				request.getParameter("email"),
				request.getParameter("tel"),
				request.getParameter("jdate"),
				request.getParameter("address1") + " $ " + request.getParameter("address2"),
				request.getParameter("postcode"));
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.upMember(mem);
		
		if(cnt > 0) {
			response.sendRedirect("/jejudo");
		} else {
			response.sendRedirect("/EditMember.do?id="+id);
		}
	}
}

package org.jeju.ctrl.member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.MemberDAO;
import org.jeju.dto.Member;
import org.jeju.util.AES256;

@WebServlet("/JoinPro.do")
public class JoinProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JoinProCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		String pw = request.getParameter("pw");
		String key = "%02x";
		try {
			pw = AES256.encryptAES256(pw, key);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		Member member = new Member(request.getParameter("id"),
				pw,
				request.getParameter("name"),
				request.getParameter("email"),
				request.getParameter("tel"),
				null);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(member);
		
		if(cnt > 0) {
			response.sendRedirect("/jejudo");
		} else {
			response.sendRedirect("/Join.do");
		}
	}
}

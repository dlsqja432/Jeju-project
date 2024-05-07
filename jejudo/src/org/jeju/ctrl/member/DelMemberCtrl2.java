package org.jeju.ctrl.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DelMemberCtrl2
 */
@WebServlet("/DelMember2.do")
public class DelMemberCtrl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelMemberCtrl2() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; char-set=UTF-8");
		
		String[] checkedValues = request.getParameterValues("checkedValues");

        if (checkedValues != null) {
            for (String value : checkedValues) {
                System.out.println("Checked value: " + value);
            }
        }
	}
}

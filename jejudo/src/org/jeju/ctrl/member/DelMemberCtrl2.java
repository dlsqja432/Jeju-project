package org.jeju.ctrl.member;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jeju.dao.MemberDAO;
import org.json.JSONArray;
import org.json.JSONException;

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
		
		// 요청 본문에서 JSON 데이터 읽기
        StringBuilder sb = new StringBuilder();
        BufferedReader reader = request.getReader();
        String line;
        ArrayList<String> lineArr = new ArrayList<>();
        while ((line = reader.readLine()) != null) {
        	sb.append(line);
        }
        
        // JSON 데이터 파싱
        String jsonData = sb.toString();
        System.out.println("Received JSON data: " + jsonData);
        
        try {
            // JSONArray 객체 생성
            JSONArray jsonArray = new JSONArray(jsonData);

            // 결과를 저장할 리스트 생성
            List<String> usersList = new ArrayList<>();

            // JSONArray에서 각 요소를 추출하여 리스트에 추가
            for (int i = 0; i < jsonArray.length(); i++) {
                String user = jsonArray.getString(i);
                usersList.add(user);
            }

            MemberDAO dao = new MemberDAO();
            int cnt = 0;
            for(int i=0; i<usersList.size(); i++) {
            	cnt = cnt + dao.delMember(usersList.get(i));
            }
            
            if(cnt > 0) {
            	response.sendRedirect("/jejudo/MemberList.do");
            } else {
            	response.sendRedirect("/admin/memberList.jsp");
            }
            
        } catch (JSONException e) {
            e.printStackTrace();
        }
        
	}
}

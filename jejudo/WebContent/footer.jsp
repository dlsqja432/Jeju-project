<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="fpath" value="<%=request.getContextPath() %>" />
<footer id="ft" class="clr-fix">
    <div class="ft_wrap">
        <nav id="fnb">
            <ul>
                <li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
                <li><a href="${hpath }/member/policy.jsp">개인정보처리방침</a></li>
            </ul>
        </nav>
        <div id="loc">
            <select name="sel" id="sel" onchange="locate()">
                <option value="">해당 관공서</option>
                <option value="https://jejumaeul.or.kr/list4/?q=YToxOntzOjEyOiJrZXl3b3JkX3R5cGUiO3M6MzoiYWxsIjt9&bmode=view&idx=9281354&t=board">부평주민센터</option>
                <option value="https://www.jjpolice.go.kr/dongbu/info/police/police8">부평파출소</option>
                <option value="https://ijto.or.kr/korean/">부평관광공사</option>
            </select>
        </div>
        <script>
        function locate(){
            var sel = document.getElementById("sel");
            if(sel.value!=""){
                window.open(sel.value);
            }
        }
        </script>
        <br><br>
        <div id="copyright">
            <p class="addr">[21354] 인천광역시 부평구 부평대로 168 (대표전화) ☎032-504-2114 </p>
            <p class="copy">COPYRIGHT(C) INCHEON BUPYEONG INTRO. ALL RIGHTS RESERVED.</p>
        </div>
    </div> 
</footer>
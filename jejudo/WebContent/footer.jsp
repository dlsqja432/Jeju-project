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
                <option value="https://jejumaeul.or.kr/list4/?q=YToxOntzOjEyOiJrZXl3b3JkX3R5cGUiO3M6MzoiYWxsIjt9&bmode=view&idx=9281354&t=board">제주주민센터</option>
                <option value="https://www.jjpolice.go.kr/dongbu/info/police/police8">제주파출소</option>
                <option value="https://ijto.or.kr/korean/">제주관광공사</option>
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
            <p class="addr">(63122) 제주특별자치도 제주시 문연로 6(연동) 대표전화 : 064-120 </p>
            <p class="copy">Munyeon-ro, Jeju-si, Jeju-do, 63122, Republic of Korea Tel. 82-64-120</p>
        </div>
    </div> 
</footer>
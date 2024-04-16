<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="fpath" value="<%=request.getContextPath() %>" />
<hr>    
<footer>
	<div class="ft_wrap">
		<nav id="fnb">
			<ul>
				<li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
				<li><a href="${hpath }/member/policy.jsp">개인정보처리방침</a></li>
			</ul>
		</nav>
		<div id="loc">
			<select name="sel" id="sel" onchange="locate()">
				<option value="">해당 관광서</option>
				<option value="https://www.geumcheon.go.kr/portal/contents.do?key=651">부평동동주민센터</option>
				<option value="https://www.smpa.go.kr/user/nd19306.do">부평파출소</option>
				<option value="https://www.life114.co.kr/html/board/view.asp?M_SEQ=1877802#google_vignette">인천부평디지털우체국</option>
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
			<p class="addr">[21354] 인천광역시 부평구 부평대로 168 (대표전화) ☎032-504-2114</p>
			<p class="copy">COPYRIGHT(C) INCHEON BUPYEONG INTRO. ALL RIGHTS RESERVED.</p>
		</div>
	</div> 
</footer>
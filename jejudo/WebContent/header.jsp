<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="hpath" value="<%=request.getContextPath()%>" />
<header id="hd" class="clr-fix">
	<div id="first_line">
		<c:if test="${not empty sid }"> 
		    <a href="${hpath }/Logout.do">로그아웃 </a>&nbsp;&nbsp;
		    <a href="${hpath }/EditMember.do?id=${sid}"> 회원정보</a>  
		</c:if>
		<c:if test="${empty sid }">
			<a href="${hpath }/member/login.jsp">로그인</a>&nbsp;&nbsp;
			<a href="${hpath }/member/term.jsp"> 회원가입</a>
		</c:if>
	</div>
	<div class="hd_wrap">
	    <a href="/jejudo"><img src="${hpath }/images/logo.png" alt="로고"></a>
	    <c:if test="${not empty sid }">
	    	<span id="hd_title">${sname }님 제주도에 어서오세요!</span>  
		</c:if>
		<c:if test="${empty sid }">
	    	<span id="hd_title">제주도에 어서오세요!</span>  
		</c:if>
	</div>
	<nav id="gnb">
	    <ul class="menu">
	        <li class="item">
	            <a href="" class="dp1">제주 소개</a>
	            <ul class="sub_menu">
	                <li><a href="${hpath }/intro/origin.jsp">제주 역사</a></li>
	                <li><a href="${hpath }/intro/facility.jsp">제주 상징</a></li>
	                <li><a href="${hpath }/intro/history.jsp">제주 연혁</a></li>
	                <li><a href="${hpath }/intro/map.jsp">오시는 길</a></li>
	            </ul>
	        </li>
	        <li class="item">
	            <a href="" class="dp1">이용안내</a>
	            <ul class="sub_menu">
	                <li><a href="${hpath }/GetTrafficList.do">교통편 안내</a></li>
	                <li><a href="${hpath }/tour/building.jsp">공공기관 안내</a></li>
	                <li><a href="${hpath }/tour/food.jsp">음식점 안내</a></li>
	                <li><a href="${hpath }/tour/hotel.jsp">숙박 시설 안내</a></li>
	            </ul>
	        </li>
	        <li class="item">
	            <a href="" class="dp1">관광정보</a>
	            <ul class="sub_menu">
	                <li><a href="${hpath }/tour/tour.jsp">관광지</a></li>
	                <li><a href="">문화재</a></li>
	                <li><a href="">추천 여행코스</a></li>
	            </ul>
	        </li>
	        <li class="item">
	            <a href="" class="dp1">커뮤니티</a>
	            <ul class="sub_menu">
	                <li><a href="${hpath }/NotiList.do">공지사항</a></li>
	                <li><a href="${hpath }/BoardList.do">자유게시판</a></li>
	                <li><a href="${hpath }/DataList.do">자료실</a></li>
	                <li><a href="${hpath }/GetQnaList.do">묻고 답하기</a></li>
	            </ul>
	        </li>
	        <li class="item">
	            <a href="" class="dp1">마이페이지</a>
	            <ul class="sub_menu">
	                <c:if test="${empty sid }">
						<li><a href="${hpath }/member/login.jsp">로그인</a></li>
						<li><a href="${hpath }/member/term.jsp">회원가입</a></li>
					</c:if>
					<c:if test="${not empty sid }">
						<li><a href="${hpath }/Logout.do">로그아웃</a></li>
						<li><a href="${hpath }/EditMember.do?id=${sid }">회원정보</a></li>
					</c:if>
					<c:if test="${sid.equals('admin') }">
						<li><a href="${hpath }/AdminMain.do">관리자</a></li>
					</c:if>
	                <li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
	                <li><a href="${hpath }/member/policy.jsp">개인정보처리 방침</a></li>
	            </ul>
	        </li>
	    </ul>
	</nav>
</header>
<hr>
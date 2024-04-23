<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="hpath" value="<%=request.getContextPath()%>" />
<head>
<style>
a, a:visited, a:active {
  color: inherit;
  text-decoration: none;
 }
#s1 {
 
  height: 100px;
}

#s1 {
  background: linear-gradient(
    140deg,
    #afebff 80%,
    
    #ffff9c 80%
  );
  text-align: end;
  
}
#c1 {
	margin-top:10px
}
a.ex1{
	padding-right: 100px;
}
</style>
</head>
<header>
	<section id="s1" style="height:50px; overflow: hidden; ">
		<div id="c1">
			<c:if test="${not empty sid }">
				<a href="${hpath }/Logout.do">로그아웃</a>
				<a href="${hpath }/EditMember.do?id=${sid }">회원정보</a>
				
			</c:if>
			<c:if test="${empty sid }">
				<a href="${hpath }/member/login.jsp">로그인</a>
				<a class="ex1" href="${hpath }/member/term.jsp">회원가입</a>	

			</c:if>
		</div>
	</section>
	<section style="height:3px;background: #004691; "></section>
	<div class="logo_wrap">
		<a href="/jejudo"><img src="${hpath }/images/logo.png"
			alt="제주도 로고" /></a>
	</div>
	<div id="tnb"
		style="height: 100px; line-height: 2rem; padding-top: 1rem">
		<c:if test="${not empty sid }">
			<h2 style="text-align: center;">${sname }님환영합니다.</h2>
		</c:if>
		<c:if test="${empty sid }">
			<h2 style="text-align: center;">모든 서비스를 활용시 로그인 요망</h2>
		</c:if>
	</div>
	<nav id="gnb">
		<ul class="">
			<li class="item"><a href="" class="dp1">지역소개</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/intro/origin.jsp">지명유래</a></li>
					<li><a href="${hpath }/intro/facility.jsp">지역 특징 및 시설안내</a></li>
					<li><a href="${hpath }/intro/history.jsp">연혁</a></li>
					<li><a href="${hpath }/intro/map.jsp">오시는 길</a></li>
				</ul></li>
			<li class="item"><a href="" class="dp1">이용안내</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/GetTrafficList.do">교통편 안내</a></li>
					<li><a href="${hpath }/tour/building.jsp">공공기관 안내</a></li>
					<li><a href="${hpath }/tour/association.jsp">음식점 안내</a></li>
					<li><a href="${hpath }/tour/lodg.jsp">숙박 시설 안내</a></li>
				</ul></li>
			<li class="item"><a href="" class="dp1">관광정보</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/NotiList.do">관광지</a></li>
					<li><a href="">문화재</a></li>
					<li><a href="${hpath }/GetQnaList.do">추천 여행코스</a></li>
				</ul></li>
			<li class="item"><a href="" class="dp1">커뮤니티</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/NotiList.do">공지사항</a></li>
					<li><a href="${hpath }/BoardList.do">자유게시판</a></li>
					<li><a href="">자료실</a></li>
					<li><a href="${hpath }/GetQnaList.do">묻고답하기</a></li>
				</ul></li>
			<li class="item"><a href="" class="dp1">마이페이지</a>
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
					<li><a href="${hpath }/member/policy.jsp">개인정보처리방침</a></li>
				</ul></li>
		</ul>
	</nav>
</header>
<hr>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>제주도 교통편</title>
<link rel="stylesheet" href="${path0 }/css/common.css">
<%@ include file="/head.jsp"%>
<style>
.breadcrumb {
	list-style: none;
	width: 920px;
	padding: 15px;
	margin: 0;
	border-top: 2px solid #ececec;
}

.breadcrumb li {
	display: inline;
}

.breadcrumb li:not (:last-child ):after {
	content: "/";
	margin: 0 5px;
}

.breadcrumb li a {
	text-decoration: none;
	color: #007bff;
}

.breadcrumb li a:hover {
	text-decoration: underline;
}

#contents {
	width: 100%;
}

.page {
	clear: both;
	width: 1200px;
	min-height: 100vh;
	margin: 0 auto;
	margin-top: 20px;
}

.page::after {
	content: "";
	display: block;
	width: 100%;
	clear: both;
}

.page_title {
	text-align: center;
	padding-top: 2em;
	padding-bottom: 0.5em;
}

#page1 {
	min-height: calc(100vh - 150px);
	margin-bottom: 10px;
}

#page_title1 {
	text-align: center;
	font-size: 32px;
	font-weight: bold;
	padding-top: 2rem;
	padding-bottom: 2rem;
}

#side_bar {
	width: 250px;
	min-height: 100vh;
	border: 2px solid #333;
	float: left;
	border: 1px solid #ececec;
}

#side_bar_title {
	width: 100%;
	height: 170px;
	line-height: 170px;
	text-align: center;
	font-size: 32px;
	font-weight: bold;
	background-color: #afebff;
}

#side_bar li {
	width: 240px;
	height: 50px;
	padding-left: 10px;
	font-size: 16px;
	line-height: 50px;
	border-bottom: 2px solid #ececec;
}

#search {
	width: 950px;
	height: 100px;
	text-align: center;
	line-height: 100px;
	background-color: #ccc
}

#search #inp1 {
	width: 100px;
	height: 40px;
	padding-left: 10px;
	font-size: 16px;
	border-radius: 8px;
	border-style: none;
}

#search #inp2 {
	width: 500px;
	height: 40px;
	padding-left: 10px;
	font-size: 16px;
	border-radius: 8px;
	border-style: none;
}
.main {
	width: 1000px;
}
</style>
</head>
<body>
	<%@ include file="/header.jsp"%>

	<main id="contents" class="clr-fix">
		<section class="page" id="page1">
			<nav id="side_bar">
				<ul>
					<h3 id="side_bar_title">이용안내</h3>
					<li><a href="">교통편 안내</a></li>
					<li><a href="">공공기관 안내</a></li>
					<li><a href="">음식점 안내</a></li>
					<li><a href="">숙박시설 안내</a></li>
				</ul>
			</nav>
			<div class="main">
				<h2 style="text-align:center;">공공기관 안내</h2>
				<hr>
				
			
			</div>


		</section>

	</main>


</body>
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
				<option
					value="https://jejumaeul.or.kr/list4/?q=YToxOntzOjEyOiJrZXl3b3JkX3R5cGUiO3M6MzoiYWxsIjt9&bmode=view&idx=9281354&t=board">
					부평주민센터</option>
				<option
					value="https://www.jjpolice.go.kr/dongbu/info/police/police8">부평파출소</option>
				<option value="https://ijto.or.kr/korean/">부평관광공사</option>
			</select>
		</div>
		<script>
			function locate() {
				var sel = document.getElementById("sel");
				if (sel.value != "") {
					window.open(sel.value);
				}
			}
		</script>
		<br> <br>
		<div id="copyright">
			<p class="addr">[21354] 인천광역시 부평구 부평대로 168 (대표전화) ☎032-504-2114</p>
			<p class="copy">COPYRIGHT(C) INCHEON BUPYEONG INTRO. ALL RIGHTS
				RESERVED.</p>
		</div>
	</div>
</footer>
</html>


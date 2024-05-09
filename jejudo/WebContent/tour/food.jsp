<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!--<link rel="stylesheet" href="${path0 }/css/normalize2.css">  -->
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

.tb_wrap {
	width: 850px;
	margin: 10px auto;
	padding-bottom: 20px;
	margin-bottom: 20px;
	float: left;
}

.tb_wrap:after {
	content: "";
	display: block;
	width: 100%;
	clear: both;
}

.table {
	display: table;
	width: 900px;
	border-spacing: 30px;
	margin: 10px auto;
}

.table tr {
	display: table-row;
}

.table td, .table th {
	display: table-cell;
	font-size: 18px;
}

.table td:first-child {
	text-align: center;
}

.table td:last-child {
	text-align: left;
	padding-left: 50px;
	border-bottom: 3px solid #ececec;
}

.table td a {
	color: deepskyblue;
	text-decoration: underline;
}

.table th {
	padding: 15px 0px;
}

.table th img {
	width: 250px;
	height: 200px;
	padding-left: 60px;
}

.table td:nth-child(2) {
	width: 800px;
}

.btn {
	width: 102px;
	height: 40px;
	text-align: center;
	margin: 10px;
	border-radius: 15px;
	background-color: #ffff9c;
	border-style: hidden;
	cursor: pointer;
	font-size: 16px;
	font-weight: bold;
}

.btn:hover {
	background-color: #afebff;
}

.btn#btn2 {
	margin-left: 100px;
	font-weight: bold;
}

.modal {
	display: none;
	/* Hidden by default */
	position: fixed;
	/* Stay in place */
	z-index: 2;
	/* Sit on top */
	padding-top: 100px;
	/* Location of the box */
	left: 0;
	padding-left: 10%;
	top: 0;
	width: 100%;
	/* Full width */
	height: 100%;
	/* Full height */
	overflow: auto;
	/* Enable scroll if needed */
	background-color: rgb(0, 0, 0);
	/* Fallback color */
	background-color: rgba(0, 0, 0, 0.8);
	/* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	position: relative;
	background-color: #fefefe;
	text-align: left;
	margin: auto;
	/*padding-right: 30%;*/
	border: 1px solid #888;
	width: 50%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	-webkit-animation-name: animatetop;
	-webkit-animation-duration: 0.4s;
	animation-name: animatetop;
	animation-duration: 0.4s
}

/* Add Animation */
@
-webkit-keyframes animatetop {from { top:-300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}
@
keyframes animatetop {from { top:-300px;
	opacity: 0
}

to {
	top: 0;
	opacity: 1
}

}

/* The Close Button */
.close {
	color: white;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

.modal-header {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
}

.modal-body {
	padding: 1% 10%;
	color: rgba(0, 0, 0, 0.6);
}

.modal-footer {
	padding: 2px 16px;
	background-color: #5cb85c;
	color: white;
}

/*버튼 */
button { -
	-color: #0077ff;
	font-family: inherit;
	display: inline-block;
	width: 6em;
	height: 2.6em;
	line-height: 2.5em;
	overflow: hidden;
	cursor: pointer;
	margin: 20px;
	font-size: 17px;
	z-index: 1;
	color: var(- -color);
	border: 2px solid var(- -color);
	border-radius: 6px;
	position: relative;
}

button::before {
	position: absolute;
	content: "";
	background: var(- -color);
	width: 150px;
	height: 200px;
	z-index: -1;
	border-radius: 50%;
}

button:hover {
	color: white;
}

button:before {
	top: 100%;
	left: 100%;
	transition: 0.3s all;
}

button:hover::before {
	top: -30px;
	left: -30px;
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


			<div class="tb_wrap">
				<h2 class="page_title" id="page_title1">음식점 안내</h2>
				<ol class="breadcrumb">
					<li><a href="main.html">Home</a></li>
					<li><a href="#">Tour</a></li>
					<li>음식점 안내</li>
				</ol>
				<div id="search">
					<input type="text" id="inp1" value="제목" readonly> <input
						type="text" id="inp2">
					<button type="button" class="btn" id="search_btn">검색</button>
				</div>
				<table class="table">
					<tbody>
						<tr>
							<th><img src="${ipath}/images/food/food01.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 돔베돈<br> <strong>주소</strong> : 제주
									제주시 관덕로15길 25<br> <strong>영업 시간</strong> : 오후 12:00 ~ 오전
									2:00 <br> <strong>전화번호</strong> : 064-753-0008
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal1">더보기</button> <!-- The Modal -->
								<pattern id="myModal1" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>돔베돈</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 관덕로15길 25</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6673.084972114919!2d126.40746986503214!3d33.2522874655999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c5ac728409539%3A0x323101daba026ecb!2sTeddy%20Bear%20Museum!5e0!3m2!1sen!2skr!4v1714973704782!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h4>찾아오시는 길:</h4>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food02.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 춘심이네 본점<br> <strong>주소</strong> :
									제주특별자치도 서귀포시 안덕면 창천리 160-4<br> <strong>영업 시간</strong> : 오전
									10:00 ~ 오후 8:00<br> <strong>전화번호</strong> : 064-794-4010
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal2">더보기</button> <!-- The Modal -->
								<pattern id="myModal2" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>춘심이네 본점</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">

								<p>주소: 제주특별자치도 서귀포시 안덕면 창천리 160-4</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3326.4289189377364!2d126.50948341201968!3d33.51623227325245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350ce4b2810e4315%3A0x3044bfd3cfaa7bb0!2sYongduam%20Rock!5e0!3m2!1sen!2skr!4v1714976157041!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food03.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 청담집<br> <strong>주소</strong> : 제주
									제주시 월랑로 83<br> <strong>영업 시간</strong> : 평일 및 토요일 오전 07:00
									~ 오후 11:00 <br> 일요일 07:00 ~ 오후 9:00<br> <strong>전화번호</strong>
									: 064-738-7600
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal3">더보기</button> <!-- The Modal -->
								<pattern id="myModal3" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>청담집</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">

								<p>주소: 제주 제주시 월랑로 83</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3328.6485055090293!2d126.93740044869463!3d33.45846298045431!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350d14b9712b7577%3A0x636ffe4d7eccbc05!2sSeongsan%20Ilchulbong!5e0!3m2!1sen!2skr!4v1714999918772!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food04.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 남또리횟집<br> <strong>주소</strong> : 제주
									제주시 애월읍 애월해안로 384<br> <strong>영업 시간</strong> : 오전 11:00 ~
									오후 10:30<br> <strong>전화번호</strong> : 064-799-1711
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal4">더보기</button> <!-- The Modal -->
								<pattern id="myModal4" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>남또리횟집</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 애월읍 애월해안로 384</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26614.047599368343!2d126.91691053754253!3d33.5077261482285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350d6aad13b6b9ab%3A0x76be50d31a67c52!2sUdo-myeon%2C%20Jeju-si%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715000972237!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food05.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 하하호호 우도점<br> <strong>주소</strong> :
									제주특별자치도 제주시 우도면 우도해안길 532<br> <strong>영업 시간</strong> : 오전
									9:00 ~ 오후 6:00<br> <strong>전화번호</strong> : 010-2899-1365
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal5">더보기</button> <!-- The Modal -->
								<pattern id="myModal5" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>하하호호 우도점</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 제주시 우도면 우도해안길 532</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3326.4289189377364!2d126.50948341201968!3d33.51623227325245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350ce4b2810e4315%3A0x3044bfd3cfaa7bb0!2sYongduam%20Rock!5e0!3m2!1sen!2skr!4v1714976157041!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food06.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 춘심이네2호점<br> <strong>주소</strong> :
									제주 제주시 1100로 3114 <strong>영업 시간</strong> : 오전 9:00 ~ 오후 9:00<br>
									<strong>전화번호</strong> : 064-711-4020
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal6">더보기</button> <!-- The Modal -->
								<pattern id="myModal6" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>춘심이네2호점</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 1100로 3114</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food07.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 연북로해물탕<br> <strong>주소</strong> : 제주
									제주시 연북로 221 <strong>영업 시간</strong> : 오전 10:00 ~ 오후 10:00<br>
									<strong>전화번호</strong> : 064-742-0110
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal7">더보기</button> <!-- The Modal -->
								<pattern id="myModal7" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>연북로해물탕</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 연북로 221</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food08.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 만부정<br> <strong>주소</strong> : 제주
									제주시 사장길 38 <strong>영업 시간</strong> : 오전07:30 ~ 오후 9:30<br>
									<strong>전화번호</strong> : 064-743-1119
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal8">더보기</button> <!-- The Modal -->
								<pattern id="myModal8" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>만부정</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 사장길 38</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food09.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 문동일셰프 녹차고을<br> <strong>주소</strong>
									: 제주 제주시 애월읍 하귀동남4길 13-1 <strong>영업 시간</strong> : 오전 10:30 ~ 오후
									9:00<br> <strong>전화번호</strong> : 064-712-1780
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal9">더보기</button> <!-- The Modal -->
								<pattern id="myModal9" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>문동일셰프 녹차고을</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 애월읍 하귀동남4길 13-1</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food10.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 기장횟집<br> <strong>주소</strong> : 제주
									서귀포시 안덕면 화순중앙로 103 <strong>영업 시간</strong> : 오후 12:00 ~ 오후 11:00<br>
									<strong>전화번호</strong> : 064-711-4020
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal10">더보기</button> <!-- The Modal -->
								<pattern id="myModal10" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>기장횟집</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 서귀포시 안덕면 화순중앙로 103</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food11.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 자매국수<br> <strong>주소</strong> : 제주
									제주시 삼성로 67 <strong>영업 시간</strong> : 오전 9:00 ~ 오후 9:00<br>
									<strong>전화번호</strong> : 064-746-2222
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal11">더보기</button> <!-- The Modal -->
								<pattern id="myModal11" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>자매국수</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 삼성로 67</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food12.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 명진전복<br> <strong>주소</strong> :
									제주특별자치도 제주시 구좌읍 해맞이해안로 1282 <strong>영업 시간</strong> : 오전 9:30 ~
									오후 9:00<br> <strong>전화번호</strong> : 064-782-9944
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal12">더보기</button> <!-- The Modal -->
								<pattern id="myModal12" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>명진전복</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 제주시 구좌읍 해맞이해안로 1282</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food13.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 흑돈가<br> <strong>주소</strong> :
									제주특별자치도 제주시 노형동 한라대학로 11 <strong>영업 시간</strong> : 오전 11:00 ~ 오후
									10:00<br> <strong>전화번호</strong> : 064-747-0088
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal13">더보기</button> <!-- The Modal -->
								<pattern id="myModal13" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>흑돈가</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 제주시 노형동 한라대학로 11</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food14.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 협재 해녀의집<br> <strong>주소</strong> :
									제주특별자치도 제주시 한림읍 협재리 1459-2 <strong>영업 시간</strong> : 오전 9:30 ~
									오후 9:00<br> <strong>전화번호</strong> : 064-796-7773
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal14">더보기</button> <!-- The Modal -->
								<pattern id="myModal14" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>협재 해녀의집</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 제주시 한림읍 협재리 1459-2</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food15.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 한성오메기떡<br> <strong>주소</strong> :
									제주특별자치도 제주시 일도1동 동문로4길 9-2 <strong>영업 시간</strong> : 오전 11:00 ~
									오후 10:00<br> <strong>전화번호</strong> : 064-721-5582
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal15">더보기</button> <!-- The Modal -->
								<pattern id="myModal15" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>한성오메기떡</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 제주시 일도1동 동문로4길 9-2</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food16.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 산방식당 본점<br> <strong>주소</strong> :
									제주특별자치도 서귀포시 대정읍 하모이삼로 62 <strong>영업 시간</strong> : 오전 11:00 ~
									오후 6:00<br> <strong>전화번호</strong> : 064-794-2165
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal16">더보기</button> <!-- The Modal -->
								<pattern id="myModal16" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>산방식당 본점</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 서귀포시 대정읍 하모이삼로 62</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food17.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 남문식당<br> <strong>주소</strong> :
									제주특별자치도 서귀포시 표선면 성읍리 987-10 <strong>영업 시간</strong> : 오전 9:00 ~
									오후 9:00<br> <strong>전화번호</strong> : 064-787-2432
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal17">더보기</button> <!-- The Modal -->
								<pattern id="myModal17" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>남문식당</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 서귀포시 표선면 성읍리 987-10</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food18.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 부지깽이<br> <strong>주소</strong> :
									제주특별자치도 제주시 이도이동 1178-6 <strong>영업 시간</strong> : 오전 11:30 ~ 오후
									8:00<br> <strong>전화번호</strong> : 064-723-3522
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal18">더보기</button> <!-- The Modal -->
								<pattern id="myModal18" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>부지깽이</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 제주시 이도이동 1178-6</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food19.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 앞뱅디식당<br> <strong>주소</strong> :
									제주특별자치도 제주시 연동 선덕로 32 제주특별자치도 <strong>영업 시간</strong> : 오전 9:00
									~ 오후 9:00<br> <strong>전화번호</strong> : 064-744-7942
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal19">더보기</button> <!-- The Modal -->
								<pattern id="myModal19" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>앞뱅디식당</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 제주시 연동 선덕로 32 제주특별자치도</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/food/food20.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 네거리식당<br> <strong>주소</strong> :
									제주특별자치도 서귀포시 특별자치도, 서문로29번길 20 <strong>영업 시간</strong> : 오전 7:00
									~ 오후 9:40<br> <strong>전화번호</strong> : 064-762-5513
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal20">더보기</button> <!-- The Modal -->
								<pattern id="myModal20" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>네거리식당</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 서귀포시 특별자치도, 서문로29번길 20</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3341.6371413958195!2d126.2645162112169!3d33.11862216633981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c3fe3464e3e15%3A0x937c53e42ca50e6!2s46%20Mara-ro%20101beon-gil%2C%20Daejeong-eup%2C%20Seogwipo%2C%20Jeju-do!5e0!3m2!1sen!2skr!4v1715005945473!5m2!1sen!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<script>
				// Get the button that opens the modal
				var btn = document.querySelectorAll("button.modal-button");

				// All page modals
				var modals = document.querySelectorAll('.modal');

				// Get the <span> element that closes the modal
				var spans = document.getElementsByClassName("close");

				// When the user clicks the button, open the modal
				for (var i = 0; i < btn.length; i++) {
					btn[i].onclick = function(e) {
						e.preventDefault();
						modal = document.querySelector(e.target
								.getAttribute("href"));
						modal.style.display = "block";
					}
				}

				// When the user clicks on <span> (x), close the modal
				for (var i = 0; i < spans.length; i++) {
					spans[i].onclick = function() {
						for ( var index in modals) {
							if (typeof modals[index].style !== 'undefined')
								modals[index].style.display = "none";
						}
					}
				}

				// When the user clicks anywhere outside of the modal, close it
				window.onclick = function(event) {
					if (event.target.classList.contains('modal')) {
						for ( var index in modals) {
							if (typeof modals[index].style !== 'undefined')
								modals[index].style.display = "none";
						}
					}
				}
			</script>
		</section>
	</main>

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
			<br>
			<br>
			<div id="copyright">
				<p class="addr">[21354] 인천광역시 부평구 부평대로 168 (대표전화) ☎032-504-2114
				</p>
				<p class="copy">COPYRIGHT(C) INCHEON BUPYEONG INTRO. ALL RIGHTS
					RESERVED.</p>
			</div>
		</div>
	</footer>

</body>

</html>
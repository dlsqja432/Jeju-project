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
							<th><img src="${ipath}/images/hotel/hotel1.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 애월 탐라스테이호텔 제주<br> <strong>주소</strong> : 제주특별자치도
									 제주시 애월읍 애월해안로 881<br> <strong>링크</strong> : http://tamnastay.com/
									<br> <strong>전화번호</strong> : 064-742-8848
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal1">더보기</button> <!-- The Modal -->
								<pattern id="myModal1" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2> 애월 탐라스테이호텔 제주</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 제주시 애월읍 애월해안로 881</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d415.94458271072585!2d126.39121582662861!3d33.48689145798359!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf127e75a2717%3A0x50e228a1091d34fa!2z7YOQ65287Iqk7YWM7J207Zi47YWU!5e0!3m2!1sko!2skr!4v1715526163761!5m2!1sko!2sk"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h4>찾아오시는 길:</h4>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel2.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 제주 시내 엠버호텔<br> <strong>주소</strong> :
									제주 제주시 삼무로 12<br> <strong>링크</strong> : http://www.amberjeju.com/view/viewLink.do?page=hotelbaojen/KOR/index/index
									<br> <strong>전화번호</strong> : 064-745-7458
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal2">더보기</button> <!-- The Modal -->
								<pattern id="myModal2" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>제주 시내 엠버호텔</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">

								<p>주소: 제주 제주시 삼무로 12</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1176.4314227344125!2d126.48735164801793!3d33.48965325673!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cfb05ad37527d%3A0x2fc431157b804339!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDsgrzrrLTroZwgMTI!5e0!3m2!1sko!2skr!4v1715526295257!5m2!1sko!2skm"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel3.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 서귀포 JnB가족호텔<br> <strong>주소</strong> : 제주특별자치도
									서귀포시 토평남로30번길 10-12<br> <strong>링크</strong> : http://www.jnbhotel.com
									 <br> 일요일 07:00 ~ 오후 9:00<br> <strong>전화번호</strong>
									: 064-738-7600
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal3">더보기</button> <!-- The Modal -->
								<pattern id="myModal3" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>서귀포 JnB가족호텔</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">

								<p>주소: 제주특별자치도 서귀포시 토평남로30번길 10-12 83</p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d415.94458271072585!2d126.39121582662861!3d33.48689145798359!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf127e75a2717%3A0x50e228a1091d34fa!2z7YOQ65287Iqk7YWM7J207Zi47YWU!5e0!3m2!1sko!2skr!4v1715526163761!5m2!1sko!2skr"
									width="600" height="450" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel4.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 성산 오션스퀘어 리조트<br> <strong>주소</strong> : 제주특별자치도
									서귀포시 성산읍 환해장성로 667 384<br> <strong>링크</strong> : https://naver.me/xQONU3T9
									<br> <strong>전화번호</strong> : 064-717-7300
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal4">더보기</button> <!-- The Modal -->
								<pattern id="myModal4" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>성산 오션스퀘어 리조트</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 서귀포시 성산읍 환해장성로 667 384</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3330.3849607310153!2d126.90642037629739!3d33.413206651201754!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350d1255afc2dfc7%3A0x6af7ca5c2f633182!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOyEnOq3gO2PrOyLnCDshLHsgrDsnY0g7ZmY7ZW07J6l7ISx66GcIDY2Nw!5e0!3m2!1sko!2skr!4v1715538958177!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel5.jpg" alt=""></th>
							<td>
								<p>
									<strong>장소명</strong> : 바다에서잘래펜션<br> <strong>주소</strong> :
									제주시 한림읍 협재1길 33<br> <strong>링크</strong> : https://naver.me/xWNIaIVY
									<br> <strong>전화번호</strong> : 064-796-7250
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal5">더보기</button> <!-- The Modal -->
								<pattern id="myModal5" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>바다에서잘래펜션</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주시 한림읍 협재1길 33</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1980.6072138703425!2d126.24316286898744!3d33.39792045965461!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c609254e83291%3A0x96dec35734605710!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDtlZzrprzsnY0g7ZiR7J6sMeq4uA!5e0!3m2!1sko!2skr!4v1715539063220!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel6.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 애월더선셋리조트<br> <strong>주소</strong> :
									제주시 애월읍 일주서로 6111 (곽지리1381) <strong>영업 시간</strong> : https://naver.me/GvdeQJqQ<br>
									<strong>전화번호</strong> : 064-799-7177
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal6">더보기</button> <!-- The Modal -->
								<pattern id="myModal6" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>애월더선셋리조트</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주시 애월읍 일주서로 6111 (곽지리1381)</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2353.7863845588345!2d126.30813009731571!3d33.45564662055165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf5a7d5d4e57f%3A0xf332e6c400ae3acb!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDslaDsm5TsnY0g7J287KO87ISc66GcIDYxMTE!5e0!3m2!1sko!2skr!4v1715539225460!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
	-								loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel7.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 히든클리프호텔&네이쳐<br> <strong>주소</strong> : 제주특별자치도
									서귀포시 예래해안로 542 <strong>링크</strong> : https://naver.me/FFvabb3x<br>
									<strong>전화번호</strong> : 064-752-7777
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal7">더보기</button> <!-- The Modal -->
								<pattern id="myModal7" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>히든클리프호텔&네이쳐</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주특별자치도 서귀포시 예래해안로 542 221</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1668.2164421011869!2d126.40082734139428!3d33.25515779341115!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c5adc973f66c5%3A0xd47a8efafcd86dce!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOyEnOq3gO2PrOyLnCDsmIjrnpjtlbTslYjroZwgNTQy!5e0!3m2!1sko!2skr!4v1715539315622!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel8.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 제주신라호텔<br> <strong>주소</strong> : 제주
									서귀포시 중문관광로72번길 75 <strong>링크</strong> : http://www.shilla.net/jeju/<br>
									<strong>전화번호</strong> : 064-735-5114
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal8">더보기</button> <!-- The Modal -->
								<pattern id="myModal8" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>제주신라호텔</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 서귀포시 중문관광로72번길 75 38</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3336.737965994359!2d126.40538037629236!3d33.247167559809874!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c5ac5f4e7b1cd%3A0x528394a28b7c58ee!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOyEnOq3gO2PrOyLnCDspJHrrLjqtIDqtJHroZw3MuuyiOq4uCA3NQ!5e0!3m2!1sko!2skr!4v1715539390173!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel9.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : WE호텔 제주<br> <strong>주소</strong>
									: 제주 서귀포시 1100로 453-95 WE호텔 제주 <strong>링크</strong> : https://wehotel.co.kr/
									<br> <strong>전화번호</strong> : 064-730-1200
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal9">더보기</button> <!-- The Modal -->
								<pattern id="myModal9" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>WE호텔 제주</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 서귀포시 1100로 453-95 WE호텔 제주</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3335.2491465818707!2d126.44163367629358!3d33.2861443577926!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c50a253c1fb11%3A0xd4ad66deea67b8b3!2zV0XtmLjthZQg7KCc7KO8!5e0!3m2!1sko!2skr!4v1715539449950!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel10.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 메리어트관 제주신화월드 호텔앤리조트<br> <strong>주소</strong> : 제주
									서귀포시 안덕면 신화역사로304번길 38  <strong>링크</strong> : https://jejushinhwaworld.modoo.at/?link=2vq7wy88<br>
									<strong>전화번호</strong> : 1670-8800
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal10">더보기</button> <!-- The Modal -->
								<pattern id="myModal10" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>메리어트관 제주신화월드 호텔앤리조트</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 서귀포시 안덕면 신화역사로304번길 38 </p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3334.4448165330246!2d126.31486297629412!3d33.307184656702454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c5c6678597ea5%3A0xb1d196e7be8f9428!2z7KCc7KO87Iug7ZmU7JuU65Oc!5e0!3m2!1sko!2skr!4v1715539570541!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel11.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 베니키아호텔제주<br> <strong>주소</strong> : 제주
									제주시 애월읍 애월해안로 554-6 <strong>링크</strong> : http://www.jejubenikea.com/<br>
									<strong>전화번호</strong> : 064-799-9977
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal11">더보기</button> <!-- The Modal -->
								<pattern id="myModal11" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>베니키아호텔제주</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 애월읍 애월해안로 554-6 67</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3327.9080306112614!2d126.35983277629927!3d33.477745147845944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf6b0625b3507%3A0x7852a7480f2c96d4!2z67Kg64uI7YKk7JWEIO2YuO2FlCDsoJzso7w!5e0!3m2!1sko!2skr!4v1715539630948!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel12.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 베드라디오 도두봉<br> <strong>주소</strong> :
									제주 제주시 서해안로 204<strong>링크</strong> : http://www.instagram.com/bedradio_ddb
									<br> <strong>전화번호</strong> : 0507-1349-5054
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal12">더보기</button> <!-- The Modal -->
								<pattern id="myModal12" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>베드라디오 도두봉</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 서해안로 204</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1663.400650104585!2d126.46851563887367!3d33.506546429830195!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cfae7cee228ab%3A0xe4c2c04d6d11b31d!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDshJztlbTslYjroZwgMjA0!5e0!3m2!1sko!2skr!4v1715539764679!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel13.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 샐리스 제주호텔<br> <strong>주소</strong> :
									제주 제주시 애월읍 고내로 46 <strong>링크</strong> : http://www.sallysjeju.com/
									<br> <strong>전화번호</strong> : 064-712-0025
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal13">더보기</button> <!-- The Modal -->
								<pattern id="myModal13" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>샐리스 제주호텔</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 애월읍 고내로 46</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1664.2135968060318!2d126.34015148891116!3d33.46422703092725!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf42506debd61%3A0xa6a3b5248b16e641!2z7IOQ66as7Iqk7KCc7KO87Zi47YWU!5e0!3m2!1sko!2skr!4v1715539827917!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel14.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 호텔 리젠트마린 제주<br> <strong>주소</strong> :
									제주 제주시 서부두2길 20 <strong>링크</strong> : http://hotelrmblue.com/
									<br> <strong>전화번호</strong> : 02-777-5080
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal14">더보기</button> <!-- The Modal -->
								<pattern id="myModal14" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>호텔 리젠트마린 제주</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 서부두2길 20</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d831.593968548716!2d126.52646389893413!3d33.51761179526846!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350ce3575d137a91%3A0xfd26edab0188cdad!2z7Zi47YWUIOumrOygoO2KuOuniOumsCDsoJzso7w!5e0!3m2!1sko!2skr!4v1715539901436!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel15.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 그라벨호텔<br> <strong>주소</strong> :
									제주 제주시 일주서로 7316 <strong>링크</strong> : https://grabelhotel.com/
									<br> <strong>전화번호</strong> : 064-740-8000
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal15">더보기</button> <!-- The Modal -->
								<pattern id="myModal15" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>그라벨호텔</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 일주서로 7316</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d415.9182541772254!2d126.4284919479928!3d33.492373160019426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf0a27065c411%3A0x5897c7c2b89ae17c!2z6re4652867Ko7Zi47YWU7KCc7KO8!5e0!3m2!1sko!2skr!4v1715539974079!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel16.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 올레리조트<br> <strong>주소</strong> :
									제주 제주시 애월읍 애월해안로 454-12 <strong>링크</strong> : https://www.olleresort.co.kr
									<br> <strong>전화번호</strong> : 064-805-7711
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal16">더보기</button> <!-- The Modal -->
								<pattern id="myModal16" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>올레리조트</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 애월읍 애월해안로 454-12</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1978.8135999452425!2d126.35344143286946!3d33.476534702314936!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf6a43e6f577d%3A0xad3f0f73ffb65447!2z7Jis66CI66as7KGw7Yq4!5e0!3m2!1sko!2skr!4v1715540038984!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel17.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 저바다에누워<br> <strong>주소</strong> :
									제주 제주시 한경면 판조로 3-5 <strong>링크</strong> : http://저바다에누워.com/
									<br> <strong>전화번호</strong> : 0507-1440-7904
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal17">더보기</button> <!-- The Modal -->
								<pattern id="myModal17" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>저바다에누워</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 한경면 판조로 3-5</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3962.6035867116047!2d126.20159165235285!3d33.36743301378558!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c66c3b40ca50f%3A0x43c70eabccdeb5bf!2z7KCc7KO87Yq567OE7J6Q7LmY64-EIOygnOyjvOyLnCDtlZzqsr3rqbQg7YyQ7KGw66GcIDMtNQ!5e0!3m2!1sko!2skr!4v1715540107521!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel18.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 브라운캐빈<br> <strong>주소</strong> :
									제주 제주시 애월읍 소길남길 190-40 <strong>링크</strong> : http://www.browncabin.co.kr/
									<br> <strong>전화번호</strong> : 010-2011-7937
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal18">더보기</button> <!-- The Modal -->
								<pattern id="myModal18" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>브라운캐빈</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 애월읍 소길남길 190-40 </p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d350.0564898712672!2d126.37513307148184!3d33.41496983949004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf6234d11ecad%3A0x47513122714f9c01!2z67iM65287Jq07LqQ67mI!5e0!3m2!1sko!2skr!4v1715540169953!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel19.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 블루하와이 호텔<br> <strong>주소</strong> :
									제주 제주시 한림읍 한림로 75 <strong>링크</strong> : https://bluehawaii2.modoo.at
									<br> <strong>전화번호</strong> : 064-773-0800
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal19">더보기</button> <!-- The Modal -->
								<pattern id="myModal19" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>블루하와이 호텔</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 한림읍 한림로 75</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3331.629973439507!2d126.21579627629644!3d33.38072515288876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c612a92b36a9b%3A0x5e4a6484f0afe37d!2z67iU66Oo7ZWY7JmA7J20!5e0!3m2!1sko!2skr!4v1715540221991!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</pattern> <pattern class="modal-footer">
								<h3>찾아오시는 길:</h3>
								</pattern> </pattern> </pattern>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/hotel/hotel20.jpg" alt=""></th>
							<td>
								<p>
									<strong>가게명</strong> : 아쿠아뷰티크<br> <strong>주소</strong> :
									제주 제주시 구좌읍 해맞이해안로 522 <strong>링크</strong> : http://www.aquabeautique.com/
									~ 오후 9:40<br> <strong>전화번호</strong> : 0507-1441-1026
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal20">더보기</button> <!-- The Modal -->
								<pattern id="myModal20" class="modal"> <!-- Modal content -->
								<pattern class="modal-content"> <pattern
									class="modal-header">
								<h2>아쿠아뷰티크</h2>
								<span class="close">×</span> </pattern> <pattern class="modal-body">
								<p>주소: 제주 제주시 구좌읍 해맞이해안로 522</p>
								<iframe 
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1175.523017253849!2d126.80052187610208!3d33.55646315851282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350d17e9ad958bff%3A0x683f6f8fc10f29fd!2z7JWE7L-g7JWE67ew7Yuw7YGs!5e0!3m2!1sko!2skr!4v1715540266784!5m2!1sko!2skr" 
									width="600" height="450" style="border:0;" allowfullscreen="" 
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

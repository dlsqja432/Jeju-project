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

.table1 {
	display: table;
	width: 900px;
	border-spacing: 30px;
	margin: 10px auto;
	background: #AFEBFF;
	color: #black;
	border-left-style: solid; ! important;
	border: 1px solid white; ! important;
	border-collapse: collapse;
	!
	important;
}
th, td {
  padding: 5px;
}
.table1 tr:nth-child(even) {
	background-color: #AFEBFF;
	border: 1px solid black; ! important;
	border-right-style: solid;
	border-left-style: solid;
	
}

.table1 tr:nth-child(odd) {
	background-color: #FFFF9C;
	border: 1px solid black; ! important;
	border-right-style: solid; ! important;
	border-left-style: solid; ! important;
	
}

.table1 th {
	background-color: #342F44;
	color: white;
	border: 1px solid black; ! important;
	border-right-style: solid; ! important;
	border-left-style: solid;
	!
	important;
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
			<div name="main_table">
				<h2 style="text-align: center;">제주도 공공버스 운행 현황</h2>
				<table class="table1">
					<thead>
						<tr>
							<th>업체명</th>
							<th>급행,일반간선,관광지순환</th>
							<th colspan="2">시내 간·지선, 읍면지선</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 20%;">극동여객(주)<br>☏064-753-0310
							</td>
							<td style="width: 20%;">151, 152,<br>251, 252, 253,
								254, 255, 270
							</td>
							<td style="width: 10%;">(제주시)</td>
							<td style="width: 20%;">325, 326, 43-1, 43-2,<br>411,
								412, 425, 426, 431, 432
							</td>
						</tr>
						<tr>
							<td style="width: 20%;">(주)동진여객<br>☏064-757-5714
							</td>
							<td style="width: 20%;">131, 132, 181,<br>231, 232, 281
							</td>
							<td style="width: 10%;">(제주시)</td>
							<td style="width: 20%;">345, 346, 347, 434, 435,<br>436,
								437, 451, 452,<br>471, 472, 473, 475, 477
							</td>
						</tr>
						<tr>
							<td style="width: 20%;">(주)삼화여객<br>☏064-753-1621
							</td>
							<td style="width: 20%;">182, 240, 282,<br> 800, 800-1
							</td>
							<td style="width: 10%;">(제주시)</td>
							<td style="width: 20%;">311, 312, 415, 440,<br>441,
								442, 444, 445,<br>446, 447, 455, 461, 462,<br>465,
								466, 490
							</td>
						</tr>
						<tr>
							<td style="width: 20%;">제주여객(주)<br>☏064-753-2056
							</td>
							<td style="width: 20%;">102, 121, 122,<br>202, 221,
								222,<br>291, 292
							</td>
							<td style="width: 10%;">(제주시)</td>
							<td style="width: 20%;">315, 316</td>
						</tr>
						<tr>
							<td style="width: 20%;">(주)삼영교통<br>☏064-713-7000
							</td>
							<td style="width: 20%;">600</td>
							<td style="width: 10%;">(제주시)</td>
							<td style="width: 20%;">302 *시내급행<br>320, 335, 336,
								341, 342,<br>348, 349, 351, 352, 355,<br>356, 357,
								358, 360, 365,<br>366, 367, 368, 369, 370, 380
							</td>
						</tr>
						<tr>
							<td style="width: 20%;">관광지순환버스<br>☏064-746-7310
							</td>
							<td style="width: 20%;">810-1, 810-2, 820-1, 820-2</td>
							<td style="width: 10%;">(제주시)<br>심야버스
							</td>
							<td style="width: 20%;">3001, 3002, 3003, 3004,<br>3005,
								3006, 3007, 3008
							</td>
						</tr>
						<tr>
							<td style="width: 20%;" rowspan="2">금남여객(주)<br>☏064-753-4423<br>
								<br>(서귀포지사)<br>☏064-767-0667
							</td>
							<td style="width: 20%;" rowspan="2">101, 111, 112,<br>201,
								211, 212<br>260, 295
							</td>
							<td style="width: 10%;">(제주시)</td>
							<td style="width: 20%;">331, 332, 421, 422</td>
						</tr>
						<tr>
							<td style="width: 10%;">(서귀포시)</td>
							<td style="width: 20%;">611, 612, 615, 616,<br>633,
								641, 642, 643, 644,<br>651, 652, 655
							</td>
						</tr>
						<tr>
							<td style="width: 20%;" rowspan="2">서귀포운수<br>(예전
								이름)동서교통(주)<br>☏064-732-4934
							</td>
							<td style="width: 20%;" rowspan="2"></td>
							<td style="width: 10%;">(서귀포시)</td>
							<td style="width: 20%;">510, 520, 521, 531, 532,<br>623,
								624, 621, 625, 630,<br>635, 645
							</td>
						</tr>
						<tr>
							<td style="width: 10%;">(서귀포시)<br>심야버스
							</td>
							<td style="width: 20%;">5001, 5002, 5003,<br>5004,
								5005, 5006
							</td>
						</tr>
						<tr>
							<td style="width: 20%;" rowspan="2">제주시공영버스<br>제주시교통행정과<br>☏064-728-3211~3
							</td>
							<td style="width: 20%;" rowspan="2"></td>
							<td style="width: 10%;">(제주시)</td>
							<td style="width: 20%;">300, 301 *시내급행</td>
						</tr>
						<tr>
							<td style="width: 10%;">(제주시)<br>읍면지선
							</td>
							<td style="width: 20%;">701-1, 701-2, 702-1, 702-2,<br>704-1,
								704-2, 704-3, 704-4, <br>711-1, 711-2, 771-1, <br>771-2,
								772-1, 772-2, <br>783-1, 783-2, 784-1, 784-2, 785, 791,
								792-1, 792-2,<br>793-1, 793-2, 794-1, 794-2, 795
							</td>
						</tr>
						<tr>
							<td style="width: 20%;" rowspan="2">서귀포시공영버스<br>서귀포시교통행정과<br>☏064-760-3111~3
							</td>
							<td style="width: 20%;" rowspan="2">880</td>
							<td style="width: 10%;">(서귀포시)</td>
							<td style="width: 20%;">622, 627, 690, 691, 692</td>
						</tr>
						<tr>
							<td style="width: 10%;">(서귀포시)<br>읍면지선
							</td>
							<td style="width: 20%;">721-2, 721-3, 722-1, 722-2,<br>731-1,
								731-2, 732-1, 732-2,<br>732-3, 741-1, 741-2,<br>
								742-1, 742-2, 751-1, 751-2,<br>752-1, 752-2, 761-2
							</td>
						</tr>
						<tr>
							<td style="width: 20%;" rowspan="2">수요응답형<br>교통수단
							</td>
							<td style="width: 20%;" rowspan="2"></td>
							<td style="width: 10%;">(제주시)<br>읍면지선
							</td>
							<td style="width: 20%;">703-1, 703-2, 781-1, 781-2,<br>782-1,
								782-2
							</td>
						</tr>
						<tr>
							<td style="width: 10%;">(서귀포시)<br>읍면지선
							</td>
							<td style="width: 20%;">743, 744, 761-1, 761-3</td>
						</tr>
					</tbody>
				</table>
				<h6 style="padding-left:350px;">
					출처: <a
						href="http://bus.jeju.go.kr/publicTrafficInformation/generalBusSchedule#">제주
						버스 정보 시스템</a>
				</h6>
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
				<p class="addr">[21354] 인천광역시 부평구 부평대로 168 (대표전화) ☎032-504-2114
				</p>
				<p class="copy">COPYRIGHT(C) INCHEON BUPYEONG INTRO. ALL RIGHTS
					RESERVED.</p>
			</div>
		</div>
	</footer>
</html>
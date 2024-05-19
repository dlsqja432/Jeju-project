<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>제주도 문화재</title>
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
					<h3 id="side_bar_title">관광정보</h3>
					<li><a href="tour.jsp">관광지</a></li>
					<li><a href="artifacts.jsp">문화재</a></li>
					<li><a href="tourCourse.jsp">추천 여행코스</a></li>
				</ul>
			</nav>


			<div class="tb_wrap">
				<h2 class="page_title" id="page_title1">문화재</h2>
				<ol class="breadcrumb">
					<li><a href="main.html">Home</a></li>
					<li><a href="#">artifact</a></li>
					<li>문화재</li>
				</ol>
				<div id="search">
					<input type="text" id="inp1" value="제목" readonly> <input
						type="text" id="inp2">
					<button type="button" class="btn" id="search_btn">검색</button>
				</div>
				<table class="table">
					<tbody>
						<tr>
							<th><img src="${ipath}/images/artifact/rock_250.jpg" alt=""></th>
							<td>
								<p>
									<strong>명칭</strong> : 돌하르방<br>

								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal1">더보기</button> <!-- The Modal -->
								<div id="myModal1" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>돌하르방</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>설명: 돌하르방은 제주도에서 마을 입구에 세워 수호신 구실을 하는 장승이다. 돌하르방이란
									‘돌할아버지’라는 제주도 방언이다. 돌하르방은 머리에 둥근 감투가 씌워졌고, 눈이 부리부리하게 큰 편이며, 입은
									다물었다. 한쪽 어깨를 치켜올렸고, 두 손은 배 부분에 위아래로 가지런히 모아 붙였다. 돌하르방은 본래
									제주현·정의현·대정현에 세워져 성문 앞에 서서 경계 표지 및 금지의 표식 구실을 하였다. 또한 성문의 수호신으로서
									성안의 안전을 지키는 종교적 기능도 담당하였다. 1971년 제주도 민속자료로 지정하였다.</p>
								<p>돌하르방 석상은 현재 제주시내에 21기, 서귀포시 표선면 성읍리에 12기, 서귀포시 대정읍
									인성·안성·보성리에 12기가 있고, 서울의 국립민속박물관에 2기가 있는데, 이것은 제주시의 것을 옮겨놓은 것이다.
								</p>

								</div> <div class="modal-footer">
								&nbsp;
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/artifact/hamel_250.jpg"
								alt=""></th>
							<td>
								<p>
									<strong>명칭</strong> : 하멜 표류기<br>

								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal2">더보기</button> <!-- The Modal -->
								<div id="myModal2" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>하멜 표류기</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>조선 중기 제주도에 표착한 헨드릭 하멜과 네덜란드인들의 억류 생활을 기록한 책.</p>
								<p>하멜 일행이 제주도에 표착하여 관원에게 체포된 경위와 조선 여기저기에 끌려다니면서 겪은 일을 적고
									있다. 또한 조선의 풍속 및 지리, 풍토, 산물, 군사, 법속, 교육, 무역 등 하멜이 직접 보고 들은 내용을
									담고 있다.</p>
								<p>『하멜 표류기』는 조선에 대해 아는 것이 거의 없던 유럽인들에게 조선을 소개한 최초의 자료라고 할 수
									있다. 『하멜 표류기』는 효종 시대의 정치, 사회상은 물론 효종의 북벌 의지를 엿볼 수 있는 귀중한 자료이다.</p>
							
								</div> <div class="modal-footer">
								&nbsp;
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/artifact/train_250.jpg" alt=""></th>
							<td>
								<p>
									<strong>명칭</strong> : 미카형 증기기관차 304호<br> 
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal3">더보기</button> <!-- The Modal -->
								<div id="myModal3" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>미카형 증기기관차 304호</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>제주특별자치도 제주시 연동의 삼무 공원에 전시되어 있는, 일제 강점기에 제작된 텐더식 증기 기관차이다.
								</p>
								<p>국내에 유일하게 남아 있는 석탄용 증기 기관차로 석탄과 물을 싣는 탄수차와 함께 원형 그대로 잘 남아
									있어 2008년 10월 17일 국가등록문화재 제414호로 지정되었고, 2021년 11월 19일 문화재청 고시에
									의해 문화재 지정번호가 폐지되어 국가등록문화재로 재지정되었다.</p>
								<p>석탄용 원료 기관차가 중유용으로 개조되지 않고 원형이 그대로 남아 있는 국내 유일의 증기 기관차로 철도
									산업 발달사에 있어 사료적 가치가 크다.</p>
								
								</div> <div class="modal-footer">
								&nbsp;
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/artifact/tools_250.jpg" alt=""></th>
							<td>
								<p>
									<strong>명칭</strong> : 제주 해녀의 물옷과 물질도구<br> 
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal4">더보기</button> <!-- The Modal -->
								<div id="myModal4" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>제주 해녀의 물옷과 물질도구</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>제주특별자치도 제주시 구좌읍 하도리 해녀 박물관에 있는 제주 해녀의 물옷과 물질도구.</p>
								<p>제주 해녀의 물옷과 물질도구 는 옛날부터 현대에 이르기까지의 제주도 해녀들이 바다에서 물질할 때 입던
									옷인 물옷과 각종 도구 15점으로 구성되었는데, 해녀 박물관에 소장된 유물 중에서 가장 오래되고 출처가 분명한
									것을 기능별로 1점씩 선정하여 지정했다.</p>
								<p>제주 해녀의 물옷과 물질도구 는 제주 해녀들이 맨몸으로 물질을 하면서 어장 조건과 작어 환경에 맞게
									적절히 고안한 것으로, 효율적인 기능성과 제작 기법의 창의성 등 거친 제주 바다의 자연환경과 노동 조건을 극복한
									제주 해녀들의 지혜를 엿볼 수 있다.</p>
								<p>제주 해녀의 물옷과 물질도구 는 세계에서 가장 오래된 여성 전문 직업인인 제주 해녀들의 고유 문화를
									연구하는 데 필수적인 자료로 평가받고 있다.</p>
								
								</div> <div class="modal-footer">
								&nbsp;
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/artifact/yeondae_250.jpg" alt=""></th>
							<td>
								<p>
									<strong>명칭</strong> : 별도연대<br> 
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal5">더보기</button> <!-- The Modal -->
								<div id="myModal5" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header">
								<h2>별도연대</h2>
								<span class="close">×</span> </div> <div class="modal-body">
								<p>설명: 제주특별자치도 제주시 화북1동에 있는 조선 전기의 통신 시설. 횃불과 연기를 이용해서 급한
									소식을 전달하는 연대 중 하나이다. 별도연대는 1999년에 석축으로 복원되었다. 별도연대는 제주도 내 일반적인
									연대의 형태인 사다리꼴 형태에 기단 주위에 타원형의 방호벽이 설치되어 있다. 연대의 하부 폭은
									8.74m×9.1m, 높이는 2.5m이다. 연대의 계단은 폭 1.4m, 길이가 2.7m이다. 지면에서 방호벽에
									오르는 계단은 길이 4.95m, 폭 1.4m이다. 축조 방식은 허튼층쌓기로 축조되었다.</p>
								<p>제주도 내 해안 구릉에 위치한 연대는 연대와 연대, 혹은 내지봉수와 연결하는 연변봉수의 기능을
									담당하였다. 별도연대는 제주도의 전형적인 연대의 형태와는 달리 독특한 방호벽 시설이 있는 연대로서 제주의 관방
									시설을 연구하는 데 중요한 학술적 자료를 제공하고 있다. 1996년 7월 18일 제주특별자치도 기념물
									제23-9호로 지정되었고, 2021년 11월 19일 문화재청 고시에 의해 문화재 지정번호가 폐지되어 제주특별자치도
									기념물로 재지정되었다.</p>
								
								</div> <div class="modal-footer">
								&nbsp;
								</div> </div> </div>
							</td>
						</tr>
						<tr>
							<th><img src="${ipath}/images/artifact/lighthouse_250.png" alt=""></th>
							<td>
								<p>
									<strong>명칭</strong> : 구엄리 도대불<br>
								</p> <!-- Trigger/Open The Modal -->
								<button class="modal-button" href="#myModal6">더보기</button> <!-- The Modal -->
								<div id="myModal6" class="modal"> <!-- Modal content -->
								<div class="modal-content"> <div
									class="modal-header"> 	<h2>구엄리 도대불</h2><span class="close">×</span>
							
								</div> <div class="modal-body">
								<p>설명: 제주특별자치도 제주시 애월읍 구엄리관련항목 보기에 있는 도대불. 밤에 조업을 나간 어선들이 항구로 돌아올 수 있도록 하기 위해서 건립되었다.
	</p><p>
구엄리 도대불은 1950년대에 상자형 도대불을 축조하고 상단에 철제탑을 세워 호롱불로 불을 밝혔다. 조업을 나가든 나가지 않든 매일 불을 켰다가 새벽녘에 껐다. 선창 주변은 바다를 관망하기에 아주 좋은 위치이다. 한편 강한 해풍에도 이 도대불 주변에는 파도가 닿지 않았다고 한다. 1974년 인근에 아세아 방송국이 개국되어 방송국 안테나의 불빛으로 선창의 위치를 찾을 수 있게 되자 더 이상 도대불을 사용하지 않게 되었다.
	</p><p>
제주도의 도대불은 최근 몇 년 사이에 거의 사라지고 없다. 그럼에도 구엄리 도대불은 옛 모습이 보존되고 있다.</p>
								
								</div> <div class="modal-footer">
								&nbsp;
								</div> </div> </div>
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
			<br> <br>
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
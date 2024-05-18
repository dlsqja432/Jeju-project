<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<script src="${path0 }/js/jquery.dataTables.js"></script>
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css">
<link rel="stylesheet" href="${path0 }/css/normalize2.css">
<link rel="stylesheet" href="${path0 }/css/common.css">
<style>
#search { width: 950px; height: 100px; text-align: center;
    line-height: 100px; background-color: #ccc; margin-bottom:20px; }
#search #inp1 { width: 100px; height: 40px; padding-left: 10px; font-size: 16px;
    border-radius: 8px; border-style: none; } 
#search #inp2 { width: 500px; height: 40px; padding-left: 10px; font-size: 16px;
    border-radius: 8px; border-style: none; } 

.page { clear:both; width:1200px; min-height:100vh; margin:0 auto; margin-top:20px;}
.page::after { content: ""; display: block; width: 100%; clear: both; }
.page_title { text-align: center; padding-top: 2em; padding-bottom: 0.5em; }
#page1, #page2 { min-height:calc(100vh - 100px); }
#page2 { margin-bottom: 20px; }
#page_title1 { text-align: center; font-size: 32px; font-weight: bold;
    padding-top: 2rem; padding-bottom: 2rem; }
.map_line { padding-left:20px; }
.tb_wrap { width: 948px; margin: 10px auto; padding-bottom: 20px; 
    margin-bottom: 20px; float: left; }
.tb_wrap:after { content:""; display:block; width: 100%; clear:both; }
.img_wrap { text-align:center; margin:10px 0; }
.line_wrap { margin-top:20px; margin-bottom:50px; }

.ra_item { display:none; }
.tab_con_box { display:none; }
#tab_con_wrap1 { text-align:left; padding-left:24px; margin-top:20px; }
.tab_con_wrap .tab_tit { font_weight:bold; color:#8D5B0C; }
#ra1:checked ~ .tab_con_wrap #tab_con_box1 { display:block;}
#ra2:checked ~ .tab_con_wrap #tab_con_box2 { display:block;}
#ra3:checked ~ .tab_con_wrap #tab_con_box3 { display:block;}
#ra4:checked ~ .tab_con_wrap #tab_con_box4 { display:block;}

#tab2 { position:relative; width: 900px; 
	clear:both; margin: 10px auto; text-align:center; }
.btn_box .ra_btn { display:inline-block; width: 225px; 
	height: 40px; line-height: 40px; text-align: center; background-color:#8D5B0C;
	color:#fff; border-radius:10px 10px 0px 0px; cursor: pointer; }

#ra1:checked ~ .btn_box label:first-child { background-color: deepskyblue; }
#ra2:checked ~ .btn_box label:nth-child(2) { background-color: deepskyblue; }
#ra3:checked ~ .btn_box label:nth-child(3) { background-color: deepskyblue; }
#ra4:checked ~ .btn_box label:nth-child(4) { background-color: deepskyblue; }
.p_wrap { padding-left:20px; padding-bottom:40px; }
</style>
</head>
<body>
<%@ include file="/header.jsp" %>
<main id="contents" class="clr-fix">
        <section class="page" id="page2">
            <nav id="side_bar">
                <ul>
                    <h3 id="side_bar_title">관광정보</h3>
                    <li><a href="${hpath }/tour/tour.jsp">관광지</a></li>
                    <li><a href="${hpath }/tour/artifacts.jsp">문화재</a></li>
                    <li><a href="${hpath }/tour/tourCourse.jsp">추천 여행코스</a></li>
                </ul>
            </nav>
            <div class="tb_wrap">
                <h2 class="page_title" id="page_title1">추천 여행코스</h2>
                <ol class="breadcrumb">
                    <li><a href="/jejudo">Home</a></li>
                    <li><a href="#">관광정보</a></li>
                    <li>추천 여행코스</li>
                </ol>
                <div class="page_wrap clr-fix" style="padding-bottom: 90px;">
                <nav id="tab2">
                    <div class="tb_wrap">
                        <input type="radio" class="ra_item" name="tb_ra2" id="ra1" checked>
                        <input type="radio" class="ra_item" name="tb_ra2" id="ra2">
                        <input type="radio" class="ra_item" name="tb_ra2" id="ra3">
                        <input type="radio" class="ra_item" name="tb_ra2" id="ra4">
                        <div class="btn_box">
                            <label for="ra1" class="ra_btn">제주도 동부코스</label>
                            <label for="ra2" class="ra_btn">제주도 서부코스</label>
                            <label for="ra3" class="ra_btn">제주도 중앙코스</label>
                            <label for="ra4" class="ra_btn">제주도 해안코스</label>
                        </div>
                        <div class="tab_con_wrap">
                            <div class="tab_con_box" id="tab_con_box1">
                                <img src="${hpath }/images/tour/jeju_right.png" alt="탭이미지">
                            </div>
                            <div class="tab_con_box" id="tab_con_box2">
                                <img src="${hpath }/images/tour/jeju_left.png" alt="탭이미지">
                            </div>
                            <div class="tab_con_box" id="tab_con_box3">
                                <img src="${hpath }/images/tour/jeju_center.png" alt="탭이미지">
                            </div>
                            <div class="tab_con_box" id="tab_con_box4">
                                <img src="${hpath }/images/tour/jeju_sea.png" alt="탭이미지">
                            </div>
                        </div>
                        <div class="tab_con_wrap" id="tab_con_wrap1">
                            <div class="tab_con_box" id="tab_con_box1">
	                            <h3 class="tab_tit"><i class="fas fa-palette"></i> 제주도 동부코스</h3>
                           		<p style="font-size:20px;">■ <strong>함덕 해수욕장</strong> (제주 제주시 조천읍 함덕리 1008)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 제주공항에서 20km 떨어져있는 가까운 거리<br>
	                       			- 에매랄드 빛 바다로 유명한 곳<br>
	                       			- 수심이 얕아서 여름 피서지로도 제격<br>
	                       			- 주변 광광지 : 북촌 돌하르방공원, 김녕해수욕장, 만장굴 등</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>월정리해변</strong> (제주 제주시 구좌읍 월정리 33-3)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 제주 올레길 20코스의 일부<br>
	                       			- 근처에 다양한 식당, 카페, 숙박시설이 있음<br>
	                       			- 스노쿨링, 카약 등 수상레포츠 즐길 수 있음</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>성산항</strong> (제주 서귀포시 성산읍 성산등용로 129-21)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 우도를 잇는 뱃길, 성산포와 우도의 절경 감상 가능<br>
	                       			- 성산항에서 우도까지 약 15분 정도 소요<br>
	                       			- 첫 배가 오전 8시부터 30분 단위로 운영<br>
	                       			- 월마다 막배 시간이 다르니 가기 전 확인 필요</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>우도</strong> (제주 제주시 우도면)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 우도의 총 둘레는 17km로 걸어서 모든 코스를 돌면 3~4시간 소요<br>
	                       			- 걷는 것보다 버스, 자전거, 미니 전기차를 추천<br>
	                       			- 주요관광지 : 검멀레해변, 우도봉, 하고수동해변 등</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>제주 아쿠아플라넷</strong> (제주 서귀포시 성산읍 섭지코지로 95)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 이용 시간 : 매일 10시 ~ 19시 (매표마감 : 5시 50분)<br>
	                       			- 입장료 : 성인 40,900원 / 청소년 39,200원 / 어린이 37,200원<br>
	                       			- 제주114에서 입장료 할인 가능</p>
                       			</div>
                            </div>
                            <div class="tab_con_box" id="tab_con_box2">
                            	<h3 class="tab_tit"><i class="fas fa-palette"></i> 제주도 서부코스</h3>
                                <p style="font-size:20px;">■ <strong>이호테우해수욕장</strong> (제주 제주시 이호2동 1600-1)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 올레 17코스가 경유하는 해수욕장<br>
	                       			- 용담해안도로와 해귀-애월 해안도로 중간 위치<br>
	                       			- 제주 공항, 제주 시내와 인접</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>애월해안도로</strong> (제주 제주시 애월읍 애월해안로)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 9km의 해안 드라이브 코스<br>
	                       			- 자전거, 도보 전용길도 있어 사이클링과 산책 가능<br>
	                       			- 근처 소금마을 구엄리는 일몰이 아름답기로 유명</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>오설록 녹차밭</strong> (제주 서귀포시 안덕면 신화역사로 15)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 이용 시간 : 매일 9시 ~ 18시 (오설록 티뮤지엄)<br>
	                       			- 푸른 녹차밭을 보기 위해 많은 관강객들이 찾는 곳<br>
	                       			- 녹차밭 옆 티하우스에서 차, 음료, 아이스크림 등 구입 가능</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>카멜리아힐</strong> (제주 서귀포시 안덕면 병악로 166)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 이용 시간 : 매일 8시 30분 ~ 17시 30분<br>
	                       			- 입장료 : 성인 8,000원 / 청소년 6,000원 / 어린이 5,000원<br>
	                       			- 제주114에서 입장료 할인 가능</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>용머리해안</strong> (제주 서귀포시 안덕면 사계리)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 이용 시간 : 매일 8시 ~ 18시<br>
	                       			- 사암층 암벽이 파도에 깎여 절벽을 이루는 곳<br>
	                       			- 영화 촬영 배경지이기도 한 아름다운 관광지</p>
                       			</div>
                            </div>
                            <div class="tab_con_box" id="tab_con_box3">
                                <h3 class="tab_tit"><i class="fas fa-palette"></i> 제주도 중앙코스</h3>
                                <p style="font-size:20px;">■ <strong>한라수목원</strong> (제주 제주시 수목원길 72)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 이용 시간 : 9시 ~ 18시<br>
	                       			- 자생수종, 아열대 식물 등 천 여종이 넘는 식물이 있는 곳<br>
	                       			- 5만평 정도 되며 1.7km 산책코스</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>서귀포 자연휴양림</strong> (제주 서귀포시 대포동 산1-1)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 이용 시간 : 매일 9시 ~ 18시<br>
	                       			- 입장료 : 어른 1,000원 / 청소년 600원 / 어린이 300원<br>
	                       			- 산림욕, 산책, 캠핑을 즐길 수 있어 사계절 내내 오기 좋은 곳</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>천지연 폭포</strong> (제주 서귀포시 서흥동 666-1)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 이용 시간 : 매일 9시 ~ 22시<br>
	                       			- 서귀포 폭포 중 규모가 제일 큰 곳으로 유명한  관광지<br>
	                       			- 천지연 폭포 주변 다양한 나무가 우거져, 한여름에도 시원한 곳</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>정방폭포</strong> (제주 서귀포시 동홍동 278)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 이용 시간 : 매일 9시 ~ 18시<br>
	                       			- 입장료 : 성인 2,000원 / 청소년 1,000원 / 어린이 1,000원<br>
	                       			- 제주도 3대 폭포, 서귀포 시내와 인접</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>서귀포 올레시장</strong> (제주 서귀포시 중앙로62번길 18)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 이용 시간 : 매일 7시 ~ 하절기 21시 / 동절기 20시<br>
	                       			- 먹거리가 다양한 시장으로 정겨운 분위기를 느끼고 싶다면 추천<br>
	                       			- 주요 먹거리 : 수일통닭, 문어빵, 회 등</p>
                       			</div>
                            </div>
                            <div class="tab_con_box" id="tab_con_box4">
                                <h3 class="tab_tit"><i class="fas fa-palette"></i> 제주도 해안코스</h3>
                                <p style="font-size:20px;">■ <strong>애월 해안도로</strong> (제주 제주시 애월읍 애월해안로)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 9km의 해안 드라이브 코스<br>
	                       			- 자전거, 도보 전용길도 있어 사이클링과 산책 가능<br>
	                       			- 근처 소금마을 구엄리는 일몰이 아름답기로 유명</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>용담 해안도로</strong> (제주 제주시 용담3동)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 바다 전망이 좋기로 유명한 곳<br>
	                       			- 제주공항과 가깝게 있어 여행 전후로 드라이브하기 좋은 곳<br>
	                       			- 용담 해안도로를 달리다보면 무지개 해안도로를 만날 수 있음</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>함덕해수욕장</strong> (제주 제주시 조천읍 함덕리 1008)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 제주공항에서 20km 떨어져있는 가까운 거리<br>
	                       			- 에메랄드 빛 바다로 유명한 곳<br>
	                       			- 수심이 얕아서 여름 피서지로도 제격</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>김녕 해수욕장</strong> (제주 구좌읍 김녕리 4330)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 코발트빛 바다풍경으로 유명한 곳<br>
	                       			- 갯바위 낚시터가 있어 낚시꾼들에게 인기<br>
	                       			- 주변 관광지 : 용천동굴, 만장굴, 당처물 동굴 등</p>
                       			</div>
                       			<p style="font-size:20px;">■ <strong>세화 해수욕장</strong> (제주 구좌읍 세화길)</p>
                           		<div class="p_wrap">
	                       			<p>
	                       			- 제주올레 20코스를 걷다 보면 만날 수 있는 곳<br>
	                       			- 정식 해수욕장은 아니지만 파란 바다가 아름다운 곳<br>
	                       			- 세화 해변 근처 벨롱장, 세화민속오일장이 열림</p>
                       			</div>
                            </div>
                        </div>
                    </div>
                </nav>
        	</div>
        	</div>
        </section>
    </main>
<%@ include file="/footer.jsp" %>
</body>
</html>
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
#ra5:checked ~ .tab_con_wrap #tab_con_box5 { display:block;}
#ra6:checked ~ .tab_con_wrap #tab_con_box6 { display:block;}

#tab2 { position:relative; width: 900px; 
	clear:both; margin: 10px auto; text-align:center; }
.btn_box .ra_btn { display:inline-block; width: 150px; 
	height: 40px; line-height: 40px; text-align: center; background-color:#8D5B0C;
	color:#fff; border-radius:10px 10px 0px 0px; cursor: pointer; }

#ra1:checked ~ .btn_box label:first-child { background-color: deepskyblue; }
#ra2:checked ~ .btn_box label:nth-child(2) { background-color: deepskyblue; }
#ra3:checked ~ .btn_box label:nth-child(3) { background-color: deepskyblue; }
#ra4:checked ~ .btn_box label:nth-child(4) { background-color: deepskyblue; }
#ra5:checked ~ .btn_box label:nth-child(5) { background-color: deepskyblue; }
#ra6:checked ~ .btn_box label:last-child { background-color: deepskyblue; }
.p_wrap { padding-left:20px; padding-bottom:40px; }
</style>
</head>
<body>
<%@ include file="/header.jsp" %>
<main id="contents" class="clr-fix">
        <section class="page" id="page2">
            <nav id="side_bar">
                <ul>
                    <h3 id="side_bar_title">제주 소개</h3>
                    <li><a href="${hpath }/intro/origin.jsp">제주 역사</a></li>
                    <li><a href="${hpath }/intro/facility.jsp">제주 상징</a></li>
                    <li><a href="${hpath }/intro/history.jsp">제주 연혁</a></li>
                    <li><a href="${hpath }/intro/map.jsp">오시는 길</a></li>
                </ul>
            </nav>
            <div class="tb_wrap">
                <h2 class="page_title" id="page_title1">제주 상징</h2>
                <ol class="breadcrumb">
                    <li><a href="/jejudo">Home</a></li>
                    <li><a href="#">제주 소개</a></li>
                    <li>제주 상징</li>
                </ol>
                <div class="page_wrap clr-fix" style="padding-bottom: 90px;">
                <nav id="tab2">
                    <div class="tb_wrap">
                        <input type="radio" class="ra_item" name="tb_ra2" id="ra1" checked>
                        <input type="radio" class="ra_item" name="tb_ra2" id="ra2">
                        <input type="radio" class="ra_item" name="tb_ra2" id="ra3">
                        <input type="radio" class="ra_item" name="tb_ra2" id="ra4">
                        <input type="radio" class="ra_item" name="tb_ra2" id="ra5">
                        <input type="radio" class="ra_item" name="tb_ra2" id="ra6">
                        <div class="btn_box">
                            <label for="ra1" class="ra_btn">심볼마크</label>
                            <label for="ra2" class="ra_btn">브랜드</label>
                            <label for="ra3" class="ra_btn">품질인증마크</label>
                            <label for="ra4" class="ra_btn">제주화장품인증마크</label>
                            <label for="ra5" class="ra_btn">캐릭터</label>
                            <label for="ra6" class="ra_btn">꽃, 나무, 새</label>
                        </div>
                        <div class="tab_con_wrap">
                            <div class="tab_con_box" id="tab_con_box1">
                                <img src="${hpath }/images/intro/symbol.png" alt="탭이미지">
                            </div>
                            <div class="tab_con_box" id="tab_con_box2">
                                <img src="${hpath }/images/intro/brand.png" alt="탭이미지">
                            </div>
                            <div class="tab_con_box" id="tab_con_box3">
                                <img src="${hpath }/images/intro/mark1.png" alt="탭이미지">
                            </div>
                            <div class="tab_con_box" id="tab_con_box4">
                                <img src="${hpath }/images/intro/mark2.png" alt="탭이미지">
                            </div>
                            <div class="tab_con_box" id="tab_con_box5">
                                <img src="${hpath }/images/intro/character.png" alt="탭이미지">
                            </div>
                            <div class="tab_con_box" id="tab_con_box6">
                                <img src="${hpath }/images/intro/flowerbird.png" alt="탭이미지">
                            </div>
                        </div>
                        <div class="tab_con_wrap" id="tab_con_wrap1">
                            <div class="tab_con_box" id="tab_con_box1">
	                            <h3 class="tab_tit"><i class="fas fa-palette"></i> 심볼마크</h3>
                           		<p>• <strong>제주특별자치도 심벌마크</strong>는 제주특별자치도가 공식 지정한 고유의 상징 심벌마크로서 제주특별자치도를 대표하는 가치와 비전을 함축하고 있다.</p>
                           		<div class="p_wrap">
	                       			<p>- <strong>수평의 붓 터치:</strong> 평등가치의 제주정신, 세계자연유산에 빛나는 제주의 자연을 표현<br>
	                       			- <strong>검은색:</strong> 현무암의 색상을 기조로 강인한 제주, 전통을 지키고 발전시키는 제주인의 문화를 상징<br>
	                       			- <strong>청색:</strong> 바다와 생물권보전지역 표현<br>
	                       			- <strong>녹색:</strong> 제주의 푸르른 한라산과 자연환경을 표현<br>
	                       			- <strong>주황색:</strong> 특별자치도로서의 미래지향적 가치, 우뚝 솟는 제주의 희망을 상징</p>
                       			</div>
                            </div>
                            <div class="tab_con_box" id="tab_con_box2">
                                <h3 class="tab_tit"><i class="fas fa-palette"></i> 도시브랜드</h3>
                                <p>• <strong>제주특별자치도 도시브랜드(Only Jeju Island)</strong>국내 유일의 세계자연유산, 특별자치 행정을 구현하여 아시아 최고 수준의 국제자유도시를 지향하는 제주특별자치도의 미래를 상징한다.</p>
                           		<div class="p_wrap">
	                       			<p>- 천혜의 신비를 간직한 용암동굴을 세계자연유산의 대표 상징으로 이미지화하고, 제주의 현무암 화산섬의 질감을 캘리그래피로 표현했으며, 제주의 아름다움을 부드러운 서체와 색상으로 나타냄으로써 강함과 부드러움이 공존하는 제주의 특별함을 표현</p>
                       			</div>
                            </div>
                            <div class="tab_con_box" id="tab_con_box3">
                                <h3 class="tab_tit"><i class="fas fa-palette"></i> 품질인증마크</h3>
                                <p>Jeju Quality를 의미하는 「JQ」와 제주산 원물 및 원료를 사용한 제품임을 증명하는 「Made in Jeju」의 영문을 활용한 제주제품 품질인증마크입니다.<br>
								「J」에 제주도의 대표 상징물인 돌하르방의 형상을 결합하여 돌하르방을 만든 제주도 장인의 정신을 표현한 디자인으로 JQ 품질인증마크 디자인은 제주를 수호해 주는 돌하르방처럼 제주에서 나오는 제품의 품질을 지켜준다는 의미를 담고 있습니다.</p>
                            </div>
                            <div class="tab_con_box" id="tab_con_box4">
                                <h3 class="tab_tit"><i class="fas fa-palette"></i> 제주화장품인증마크</h3>
                                <p>• <strong>Symbol logo mark 심벌로고마크</strong></p>
                           		<div class="p_wrap">
	                       			<p>제주화장품인증이 가진 제주의 대표성을 제주도 지형의 아웃라인을 모티브화 하여 표현한 신뢰성있는 워드형 기반의 엠블렘 형태는 “Made in JEJU”를 통해 소비자가 제주화장품을 체험함으로써 느끼게 될 제주 호정품브랜드의 긍정적 만족도를 상징화하였다.<br>
	                       			 타원형의 제주도만의 독특한 지형을 역동적인 붓터치로 그려내어 제주화장품의 자연주의 DNA와 지속적 성장가능성을 다이나믹하게 표현하였다</p>
                       			</div>
                            </div>
                            <div class="tab_con_box" id="tab_con_box5">
	                            <h3 class="tab_tit"><i class="fas fa-palette"></i> 캐릭터</h3>
                                <p>• 제주특별자치도 캐릭터 <strong>“돌이”</strong>와 <strong>“소리”</strong>는 세계자연유산과 화산용암의 상징</p>
                                <div class="p_wrap">
	                       			<p>- 현무암으로 만들어진 돌하르방이 연상되는 “돌이”와 제주의 해녀 옷을 입고 있는 “소리”의 얼굴 부분을 영문 ‘JEJU’로 표현해 그 상징성을 강조<br>
	                       			- 디자인적 차별화 전략으로 다양한 동작 및 의상을 응용 및 개발</p>
                       			</div>
                            </div>
                            <div class="tab_con_box" id="tab_con_box6">
	                            <h3 class="tab_tit"><i class="fas fa-leaf"></i> 제주를 상징하는 꽃 - 참꽃</h3>
                                <div class="p_wrap">
	                       			<p>각박(刻薄)한 땅이나 바위틈에서도 잘 자라며 봄철 초록빛 숲 속에서 타는 듯한 붉은 꽃을 무더기로 피우고 있는 참꽃은 제주특별자치도민의 불타는 의욕과 응결된 의지를 나타내고 있다.<br>
									잎은 가지 끝에 세 잎씩 윤생하여 제주의 자랑인 삼다, 삼무, 삼보, 삼려를 나타내고 있을 뿐 아니라, 세잎과 다섯 꽃잎이 규칙적으로 족생(簇生)하여 삼삼오오 즉, 도민들의 단결과 질서, 평화로운 발전을 향한 밝은 전진적 기풍을 상징한다.<br>
									• 학명 : Rhododendron weyrichii Maxim.</p>
                       			</div>
                       			<h3 class="tab_tit"><i class="fas fa-tree"></i> 제주를 상징하는 나무 - 녹나무</h3>
                                <div class="p_wrap">
	                       			<p>녹나무는 제주특별자치도민의 특성과 기질과 신앙을 상징하고 있다.<br>
									각박한 땅이나 바위틈에서도 잘 자라는 강인한 이 나무는 악조건을 극복하면서 꿋꿋하게 살아가고 있는 제주특별자치도민의 근면, 소박, 인내심을 상징하며 언제나 그 싱싱함을 잃지 않는 상록수일 뿐만 아니라 봄에 새 잎이 날 때는 그 잎이 붉은 꽃과 같이 화려함은 도민의 희망과 정열과 무궁한 번영의 기상을 보여준다.<br>
									나무와 잎에서 풍기는 독특한 향기는 도민의 높은 품위와 슬기롭고 풍부한 정감을 보여주며 짙은 향기가 사귀를 몰아낸다는 전설은 부정과 불의와 불법에 타협하지 않고 의지와 실천을 앞세워 살아온 제주특별자치도민의 얼이 깃든 신앙의 나무이기도 하다.<br>
									• 학명:Cinnamomum camphora (L) Siebold</p>
                       			</div>
                       			<h3 class="tab_tit"><i class="fas fa-dove"></i> 제주를 상징하는 새 - 제주큰오색딱따구리</h3>
                                <div class="p_wrap">
	                       			<p>제주큰오색딱따구리는 활엽수의 노거수 교목림에 많으며 제주특별자치도에 분포하는 종으로 소형이며 암색이다.<br>
	                       			 머리와 등면은 큰오색딱따구리와 거의 같으나 다만 아래등과 허리의 백색이 적다.<br>
	                       			 그리고 아래면의 세로난 무늬가 넓고 바깥쪽 꼬리 깃에 완전한 흑색 띠가 3줄 있다.<br>
	                       			 그러나 턱 아래 가슴의 바탕색은 연한 황백색이며 산림해충을 구제하는데 유익하다.<br>
									• 학명: Dendrocopos leucotos quelpartensis</p>
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
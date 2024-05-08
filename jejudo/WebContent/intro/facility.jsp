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
#ra1:checked ~ .tab_con_wrap #tab_con_box1 { display:block; }
#ra2:checked ~ .tab_con_wrap #tab_con_box2 { display:block; }
#ra3:checked ~ .tab_con_wrap #tab_con_box3 { display:block; }
#ra4:checked ~ .tab_con_wrap #tab_con_box4 { display:block; }
#ra5:checked ~ .tab_con_wrap #tab_con_box5 { display:block; }
#ra6:checked ~ .tab_con_wrap #tab_con_box6 { display:block; }

#tab2 { position:relative; width: 900px; 
	clear:both; margin: 10px auto; text-align:center; }
.btn_box .ra_btn { display:inline-block; width: 150px; 
	height: 40px; line-height: 40px; text-align: center; background-color:#8D5B0C;
	color:#fff; border-radius:10px 10px 0px 0px; }

#ra1:checked ~ .btn_box label:first-child { background-color: deepskyblue; }
#ra2:checked ~ .btn_box label:nth-child(2) { background-color: deepskyblue; }
#ra3:checked ~ .btn_box label:nth-child(3) { background-color: deepskyblue; }
#ra4:checked ~ .btn_box label:nth-child(4) { background-color: deepskyblue; }
#ra5:checked ~ .btn_box label:nth-child(5) { background-color: deepskyblue; }
#ra6:checked ~ .btn_box label:last-child { background-color: deepskyblue; }
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
                           		<p class="tab_back">• 제주특별자치도 심벌마크는 제주특별자치도가 공식 지정한 고유의 상징 심벌마크로서 제주특별자치도를 대표하는 가치와 비전을 함축하고 있다.</p>
                       			<p class="tab_front">- 수평의 붓 터치: 평등가치의 제주정신, 세계자연유산에 빛나는 제주의 자연을 표현<br>
                       			- 검은색: 현무암의 색상을 기조로 강인한 제주, 전통을 지키고 발전시키는 제주인의 문화를 상징<br>
                       			- 청색: 바다와 생물권보전지역 표현<br>
                       			- 녹색: 제주의 푸르른 한라산과 자연환경을 표현<br>
                       			- 주황색: 특별자치도로서의 미래지향적 가치, 우뚝 솟는 제주의 희망을 상징</p>
                            </div>
                            <div class="tab_con_box" id="tab_con_box2">
                                <h3 class="tab_tit"><i class="fas fa-palette"></i> 브랜드</h3>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                            </div>
                            <div class="tab_con_box" id="tab_con_box3">
                                <h3 class="tab_tit"><i class="fas fa-palette"></i> 품질인증마크</h3>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                            </div>
                            <div class="tab_con_box" id="tab_con_box4">
                                <h3 class="tab_tit"><i class="fas fa-palette"></i> 제주화장품인증마크</h3>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                            </div>
                            <div class="tab_con_box" id="tab_con_box5">
	                            <h3 class="tab_tit"><i class="fas fa-palette"></i> 캐릭터</h3>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                            </div>
                            <div class="tab_con_box" id="tab_con_box6">
	                            <h3 class="tab_tit"><i class="fas fa-palette"></i> 꽃,나무,새</h3>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
                                <p>이건뭘까용</p>
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
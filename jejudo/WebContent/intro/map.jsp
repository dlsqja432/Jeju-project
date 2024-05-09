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
                <h2 class="page_title" id="page_title1">오시는 길</h2>
                <ol class="breadcrumb">
                    <li><a href="/jejudo">Home</a></li>
                    <li><a href="#">제주 소개</a></li>
                    <li>오시는 길</li>
                </ol>
                <div class="line_wrap" style="margin-bottom:10px;">
                	<h4 class="map_line"><i class="fas fa-map-marked"></i><strong> 공항,부두에서 오시는 길</strong></h4>
                </div>
                <div class="img_wrap">
                	<img src="${hpath }/images/intro/map1.jpg">
                </div>
                <div class="line_wrap">
		            <h5 class="map_line"><i class="fas fa-bus"></i><strong> 제주항국제여객선터미널 출발 제주종합버스터미널 경유</strong></h5>
		            <p class="map_line"><i class="fas fa-chevron-right"></i> 제주항국제여객선터미널 -> 광양사거리 -> 제주종합버스터미널 -> 신제주로터리 -> 도청</p>
                </div>
                <div class="line_wrap">
		            <h5 class="map_line"><i class="fas fa-bus"></i><strong> 제주항국제여객선터미널 출발 공항 경유</strong></h5>
		            <p class="map_line"><i class="fas fa-chevron-right"></i> 제주항국제여객선터미널 -> 탑동 -> 용담로터리 -> 공항 -> 신제주로터리 -> 도청</p>
                </div>
                <div class="line_wrap">
		            <h5 class="map_line"><i class="fas fa-bus"></i><strong> 제주종합버스터미널 출발</strong></h5>
		            <p class="map_line"><i class="fas fa-chevron-right"></i> 제주종합버스터미널 -> 신제주로터리 -> 도청</p>
                </div>
                <div class="line_wrap">
		            <h5 class="map_line"><i class="fas fa-bus"></i><strong> 공항 출발</strong></h5>
		            <p class="map_line"><i class="fas fa-chevron-right"></i> 공항 -> 신제주로터리 -> 도청</p>
                </div>
                <div class="line_wrap" style="margin-bottom:10px; margin-top:100px;">
                	<h4 class="map_line"><i class="fas fa-map-marked"></i><strong> 도청부근 상세지도(신제주지역)</strong></h4>
                	<div class="img_wrap">
	                	<a href="https://map.kakao.com/?mapJson=%7B%22mapCenterX%22%3A383447.5%2C%22mapCenterY%22%3A-1025%2C%22mapLevel%22%3A3%2C%22coordinate%22%3A%22wcongnamul%22%2C%22map_type%22%3A%22TYPE_MAP%22%2C%22map_hybrid%22%3A%22false%22%2C%22markInfo%22%3A%5B%7B%22coordinate%22%3A%22wcongnamul%22%2C%22x%22%3A383453.5581636307%2C%22y%22%3A-1002.4059717427008%2C%22content%22%3A%22%EC%A0%9C%EC%A3%BC%ED%8A%B9%EB%B3%84%EC%9E%90%EC%B9%98%EB%8F%84%20%EC%A0%9C1%EC%B2%AD%EC%82%AC%22%7D%2C%7B%22coordinate%22%3A%22wcongnamul%22%2C%22x%22%3A383930.6574486766%2C%22y%22%3A-1030.771693814313%2C%22content%22%3A%22%EC%A0%9C%EC%A3%BC%ED%8A%B9%EB%B3%84%EC%9E%90%EC%B9%98%EB%8F%84%20%EC%A0%9C2%EC%B2%AD%EC%82%AC%22%7D%5D%7D" target="_blank" title="새창">
							<img alt="도청부근 상세지도(신제주지역)" src="${hpath }/images/intro/map2.png">
	                	</a>
                	</div>
                </div>
                <div class="line_wrap">
		            <h5 class="map_line"><i class="fas fa-address-card"></i><strong> 주소 / 전화번호</strong></h5>
		            <p class="map_line"><i class="fas fa-chevron-right"></i> 주소: 63122 제주특별자치도 제주시 문연로 6(연동)</p>
		            <p class="map_line"><i class="fas fa-chevron-right"></i> 전화번호: (064)120</p>
                </div>
            </div>
        </section>
    </main>
<%@ include file="/footer.jsp" %>
</body>
</html>
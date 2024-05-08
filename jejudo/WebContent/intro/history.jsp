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
#page2 { margin-bottom: 10px; }
#page_title1 { text-align: center; font-size: 32px; font-weight: bold;
    padding-top: 2rem; padding-bottom: 2rem; }

.tb_wrap { width: 948px; margin: 10px auto; padding-bottom: 20px; 
    margin-bottom: 20px; float: left; }
.tb_wrap:after { content:""; display:block; width: 100%; clear:both; }
.table { display:table; border-collapse: collapse; width:900px; 
    margin:10px auto; }
.table tr { display:table-row; height: 50px; }
.table tr:nth-child(odd) { background-color: white; }
.table tr:nth-child(even) { background-color: #f2f2f2; }
.table td, .table th { display:table-cell; font-size:16px; }
.table th { line-height: 36px; text-align:center; font-weight:bold; font-size:20px; }
.table td { line-height: 32px; }
.table th:first-child { border-top:2px solid #8C530D; border-bottom:2px dashed #8C530D;
	color:#8C530D; }
.table th:last-child { border-top:2px solid #ced4da; border-bottom:2px dashed #ced4da;
	font-weight:bold; }
.table td:first-child{ padding-left:30px; color:#8C530D; font-weight:bold; font-size:16px; }
.table td:last-child { padding-left:32px; border-right: 1px solid #ececec; }
.table #item1 { width:30%; }
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
                <h2 class="page_title" id="page_title1">제주 연혁</h2>
                <ol class="breadcrumb">
                    <li><a href="/jejudo">Home</a></li>
                    <li><a href="#">제주 소개</a></li>
                    <li>제주 연혁</li>
                </ol>
                <table class="table" id="tb1">
                    <thead>
                        <tr>
                            <th id="item1">시기</th>
                            <th id="item2">연혁</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<tr>
                    		<td>상고시대 ∼ 삼국시대</td>
                    		<td>탐라 (탁라)국</td>
                    	</tr>
                    	<tr>
                    		<td>938년 (고려태조 21년)</td>
                    		<td>탐라국 태자 고말로, 고려입조</td>
                    	</tr>
                    	<tr>
                    		<td>1105년 (고려숙종10년)</td>
                    		<td>탐라국호 폐지, 탐라군 설치</td>
                    	</tr>
                    	<tr>
                    		<td>고려고종년대(1192∼1259)</td>
                    		<td>탐라군을 제주로 개편</td>
                    	</tr>
                    	<tr>
                    		<td>1275년 (충열왕 원년)</td>
                    		<td>탐라국으로 회복,총관부 설치</td>
                    	</tr>
                    	<tr>
                    		<td>1294년 (충열왕 20년)</td>
                    		<td>고려로 환속, 제주로 복호</td>
                    	</tr>
                    	<tr>
                    		<td>조선조 초기 (태조년대)</td>
                    		<td>제주목에 군안무사 겸 목사를 둠</td>
                    	</tr>
                    	<tr>
                    		<td>1416년 (태종 16년)</td>
                    		<td>제주목에 정의·대정현 설치</td>
                    	</tr>
                    	<tr>
                    		<td>1864년 (고종 1년)</td>
                    		<td>정의, 대정 양현을 군으로 승격, 전라도 관찰사 관할에 둠.</td>
                    	</tr>
                    	<tr>
                    		<td>1880년 (고종 17년)</td>
                    		<td>다시 현으로 환원</td>
                    	</tr>
                    	<tr>
                    		<td>1895년 (고종 32년)</td>
                    		<td>제주목을 부로 개편, 관찰사를 둠</td>
                    	</tr>
                    	<tr>
                    		<td>1906년 (광무 10년)</td>
                    		<td>목사를 폐지, 군수를 둠</td>
                    	</tr>
                    	<tr>
                    		<td>1910년 (융희 4년)</td>
                    		<td>정의·대정군 제주군에 합군</td>
                    	</tr>
                    	<tr>
                    		<td>1915년 5월 (일제시대)</td>
                    		<td>군제 폐지, 도제(島制)로 개편</td>
                    	</tr>
                    	<tr>
                    		<td>1946년 8월 1일</td>
                    		<td>도(道)제 실시 (2군·1읍·12면)</td>
                    	</tr>
                    	<tr>
                    		<td>1955년 9월 1일</td>
                    		<td>제주읍이 제주시로 승격 (1시·2군)</td>
                    	</tr>
                    	<tr>
                    		<td>1956년 7월 8일</td>
                    		<td>서귀면·대정면·한림면 각각 읍 승격, 한경면 신설(1시·2군·3읍·10면·14개동)</td>
                    	</tr>
                    	<tr>
                    		<td>1979년 5월23일</td>
                    		<td>제주시에 3개동 분할 신설(17개동)</td>
                    	</tr>
                    	<tr>
                    		<td>1980년 12월 1일</td>
                    		<td>애월·구좌·남원·성산면 각각 읍으로 승격(1시·2군·7읍·6면·17개동)</td>
                    	</tr>
                    	<tr>
                    		<td>1981년 7월 1일</td>
                    		<td>서귀읍·중문면 통합, 서귀포시 승격(12동)</td>
                    	</tr>
                    	<tr>
                    		<td>1983년 10월 1일</td>
                    		<td>제주시 삼도동 분동</td>
                    	</tr>
                    	<tr>
                    		<td>1985년 10월 1일</td>
                    		<td>제주시 용담동 분동, 조천면 읍으로 승격(2시·2군·7읍·4면·31동)</td>
                    	</tr>
                    	<tr>
                    		<td>1986년 4월 1일</td>
                    		<td>구좌읍 연평리를 우도면으로 승격(2시·2군·7읍·5면·31동)</td>
                    	</tr>
                    	<tr>
                    		<td>2006년 6월 이전</td>
                    		<td>2시·2군·7읍·5면·31개동</td>
                    	</tr>
                    	<tr style="border-bottom:1px solid #ced4da">
                    		<td>2006년 7월 현재</td>
                    		<td>제주특별자치도 출범(2행정시·7읍·5면·31개동)</td>
                    	</tr>
                    </tbody>
                </table>
            </div>
        </section>
    </main>
<%@ include file="/footer.jsp" %>
</body>
</html>
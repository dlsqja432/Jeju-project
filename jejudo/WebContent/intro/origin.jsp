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

article { margin-top:20px; }
article p { display:inline-block; padding:0 20px; width:948px; }
article .import { font-size:22px; color:#8D5B0C; }
article #import1 { font-size:1em; }
.img_wrap { text-align:center; margin-bottom:20px; }
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
                <h2 class="page_title" id="page_title1">제주 역사</h2>
                <ol class="breadcrumb">
                    <li><a href="/jejudo">Home</a></li>
                    <li><a href="#">제주 소개</a></li>
                    <li>제주 역사</li>
                </ol>
                <article>
                	<p>
                	<strong class="import">제주특별자치도</strong> 역사의 기원은 석기시대로까지 거슬러 올라간다. 이시대 사람들은 동굴이나 바위 그늘 주거지에서 생활하였으며, 유물로는 타제석기(打製石器), 골각기(骨刻器) 등이 발견되고 있다.<br>
					이후 청동기,철기시대의 유물,유적으로 고인돌, 마제석기, 토기, 옹관묘(甕棺墓) 등도 도내 전역에 분포되고 있어 제주특별자치도 역사의 기원을 더듬어 볼 수 있는 소중한 자료가 되고 있다.<br><br>
					<div class="img_wrap">
						<img src="${hpath }/images/intro/origin1.jpg">
					</div>
					<p>
					제주의 옛명칭은 도이(島夷), 동영주(東瀛洲), 섭라(涉羅), 탐모라(耽牟羅), 탁라(乇羅) 등으로 불리어 왔다.<br>
					이들 명칭중 '동영주'만을 제외하고는 모두가 '섬나라' 라는 뜻이다.<br><br>
					<strong class="import">제주도의 개벽신화인 3성(三姓)신화</strong>에 의하면 태고에 '고을나(高乙那)', '양을나(良乙那)', '부을나(夫乙那)' 라고 하는 삼신인(三神人)이 한라산 북쪽 모흥혈(毛興穴:현재의 삼성혈) 이라는 땅 속에서 솟아나와 가죽옷을 입고 사냥을 하며 살고 있었다.<br>
					이들 삼신인들은 '벽랑국(碧浪國)' 에서 오곡의 씨앗과, 송아지, 망아지 등을 갖고 목함을 타고 제주특별자치도 동쪽해상으로 들어온 삼공주를 맞아 혼례를 올렸다. 이때부터 이들은 오곡의 씨앗으로 농사를 짓고 소와 말을 기르며 살기 시작했다.<br><br>
					<strong class="import" id="import1">그후 '고을나'의 15대 후손 3형제 (후, 청, 계)가 당시 한국의 고대왕조의 하나인 '신라'(B.C 57~A.D 935)에 입조(入朝)하여 '탐라'(제주특별자치도의 옛명칭) 라는 국호를 갖게 되었고, 또 이때부터 '탐라'는 '신라'를 섬기게 되었다.</strong><br><br>
					기록에 의하면 이 탐라국은 고구려, 백제 및 신라로 분열된 삼국시대에는 이들 나라들과 독자적으로 혹은 그에 예속되어 있으면서 외교관계를 맺어왔다.<br>
					이러한 관계는 그후 고려 시대에도 계속되면서 탐라국의 독특한 문화와 역사의 맥을 이어왔다. 1105년에는 고려의 행정구역인 탐라군으로 바뀌었으나, 왕자의 지위는 그대로 존속되어 실질적인 탐라의 통치자 역할을 하였다.<br><br><br>
					</p>		
                </article>
            </div>
        </section>
    </main>
<%@ include file="/footer.jsp" %>
</body>
</html>
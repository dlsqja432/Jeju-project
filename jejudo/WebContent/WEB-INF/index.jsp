<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<link rel="stylesheet" href="${path0 }/css/normalize2.css">
<link rel="stylesheet" href="${path0 }/css/common.css">
<%@ include file="/head.jsp" %>
<style>
.page { clear:both; width:1200px; min-height:100vh; margin:0 auto; margin-top:20px;}
.page::after { content: ""; display: block; width: 100%; clear: both; }
.page_title { text-align: center; padding-top: 2em; padding-bottom: 0.5em; }
#page1, #page2 { background-color:#FFFFF0; min-height:calc(100vh - 480px); }
#page2 { margin-bottom: 10px;  }
#contents { background-color:#FFFFF0; }

.recommend { width:450px; height:500px; background-color:white;
    padding:15px; margin:40px 75px; box-shadow:0px 0px 40px #666;
    float:left; border-bottom-right-radius: 80px; position: relative;}
.recommend p { text-align: center; font-size: 20px; font-weight: bold; }
.recommend .div_btn { text-align: right; padding-right: 40px; }
.re_wrap { width:100%; clear:both; }	
.re_wrap:after { content:""; display: block; width:100%; clear:both; }
.subtitle { text-align:center; z-index:3}
.pos_box article { width:80px; height: 80px;
        text-align: center; border-radius:50px 50px 0px 50px; position:absolute; }
article.art1 { background-color:#ffff9c; top:-10px; left:110px; z-index:2; filter:opacity(60%);} 
article.art2 { background-color:#afebff; top:-10px; right:-338px; z-index:2; filter:opacity(60%);} 
.img_item { display:block; width:400px; height:auto; margin:30px auto;}

.tb_wrap { clear:both; width: 1200px; margin: 10px auto; padding-bottom: 20px; 
    margin-bottom: 20px; position:relative; }
.tb_wrap:after { content:""; display:block; width: 100%; clear:both; }
.table { display:table; border-collapse: collapse; width:960px; 
    margin:10px auto; }
.table tr { display:table-row; }
.table td, .table th { display:table-cell; font-size:16px; }
.table td { line-height: 24px; border-bottom:1px solid #333; }
.table td:first-child, .table td:last-child { text-align:center; }
.table th { line-height: 24px; background-color:#ccc; color:#fff; }
.table td:first-child { width:80px; }
.table td:nth-child(2) { width:700px; }
.table td:last-child { width:280px; }
.table th:nth-child(2) { padding-left: 37px; }
.table th:last-child { padding-left: 40px; }
.table a.n_tit { display:block; width: 660px; padding: 0 20px; 
    white-space:nowrap; text-overflow: ellipsis; overflow:hidden; 
    font-weight: bold; }
.table a.n_tit:hover { text-decoration: underline; color:deepskyblue; }
.plus_btn { width:960px; margin:20px auto; text-align:right; }

#page3 {background-color:#FFFFF0; min-height: calc(100vh - 700px); margin-bottom:20px; }
.icon_lst { clear: both; width: 1200px; margin: 0 auto; }
.icon_lst li { float: left; width: 110px; margin: 20px; text-align: center; }
.icon_lst li a { clear: #333; }
.icon_lst .icon_fr { width: 110px; height: 110px; display: flex;
    align-items: center; justify-content: center;
    border-radius: 56px; background-color: #ececec; }
.icon_lst .icon_fr img { opacity: 0.6; transition: 0.6s; }
.icon_lst li:hover .icon_fr img { opacity: 1; }
.icon_lst .icon_tit { line-height: 36px; padding-top: 0.5em; }
</style>
</head>
<body>
<%@ include file="/header.jsp" %>
<main id="contents" class="clr-fix">
	<figure id="vs">
	   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img class="d-block w-100" src="${hpath }/images/main1.jpg" alt="First slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="${hpath }/images/main2.jpg" alt="Second slide">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="${hpath }/images/main3.png" alt="Third slide">
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
    </figure>
    <section id="page1" class="page">
        <div class="re_wrap">	
            <div class="recommend" id="recommend1">
                <div class="pos_box">
                    <article class="art1"></article>
                    <article class="art2"></article>
                </div>
                <h2 class="subtitle"><strong>제주의 문화재</strong></h2>
                <img class="img_item" src="images/arti1.jpg" alt="">
                <div class="div_btn">
                    <a href="${hpath }/tour/artifacts.jsp">
                        <button type="button" class="btns">더보기</button>
                    </a>
                </div>
            </div>
            <div class="recommend" id="recommend2">
                <h2 class="subtitle"><strong>제주의 관광지</strong></h2>
                <img class="img_item" src="images/arti2.png" alt="">
                <div class="div_btn">
                    <a href="${hpath }/tour/tour.jsp">
                        <button type="button" class="btns_blue">더보기</button>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <section class="page" id="page2">
        <h2 class="page_title">공지사항</h2>
        <div class="tb_wrap">
            <table class="table">
                <thead>
                    <tr>
                        <th>연번</th>
                        <th>제목</th>
                        <th>작성일</th>
                    </tr>
                </thead>
                <tbody>
                	<c:if test="${not empty notiList }">
                		<c:forEach var="dto" items="${notiList }" varStatus="status">
                			<tr style="background-color:white;">
		                        <td>${fn:length(notiList) - status.count + 1 }</td>
		                        <td><a href="${path0 }/GetNotice.do?no=${dto.no}" class="n_tit">${dto.title }</a></td>
		                        <td>
			                        <fmt:parseDate value="${dto.resdate }" var="res" pattern="yyyy-MM-dd HH:mm:ss" />
							 		<fmt:formatDate value="${res }" var="resdate" pattern="yyyy년 MM월 dd일" />
							 		${resdate }
		                        </td>
		                    </tr>
                		</c:forEach>
                	</c:if>
                	<c:if test="${empty notiList }">
                		<tr>
                			<td>공지사항이 없습니다.</td>
                		</tr>
                	</c:if>
                </tbody>
            </table>
            <div class="plus_btn">
            	<a href="${hpath }/NotiList.do">
            		<button type="button" class="btns_blue">더보기</button>
            	</a>
            </div>
        </div>
    </section>
    <section class="page" id="page3">
        <div class="tb_wrap">
            <ul class="icon_lst">
                <li>
                    <a href="${hpath }/information/traffic.jsp">
                        <div class="icon_fr"><img src="${hpath }/images/boxIcon1.png" alt="아이콘1"></div>
                        <h4 class="icon_tit">교통편</h4>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/information/food.jsp">
                        <div class="icon_fr"><img src="${hpath }/images/boxIcon2.png" alt="아이콘2"></div>
                        <h4 class="icon_tit">음식점</h4>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/information/hotel.jsp">
                        <div class="icon_fr"><img src="${hpath }/images/boxIcon3.png" alt="아이콘3"></div>
                        <h4 class="icon_tit">숙박시설</h4>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/tour/tour.jsp">
                        <div class="icon_fr"><img src="${hpath }/images/boxIcon4.png" alt="아이콘4"></div>
                        <h4 class="icon_tit">관광지</h4>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/tour/artifacts.jsp">
                        <div class="icon_fr"><img src="${hpath }/images/boxIcon5.png" alt="아이콘5"></div>
                        <h4 class="icon_tit">문화재</h4>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/tour/tourCourse.jsp">
                        <div class="icon_fr"><img src="${hpath }/images/boxIcon6.png" alt="아이콘6"></div>
                        <h4 class="icon_tit">추천 여행 코스</h4>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/NotiList.do">
                        <div class="icon_fr"><img src="${hpath }/images/boxIcon7.png" alt="아이콘7"></div>
                        <h4 class="icon_tit">공지사항</h4>
                    </a>
                </li>
                <li>
                    <a href="${hpath }/intro/map.jsp">
                        <div class="icon_fr"><img src="${hpath }/images/boxIcon8.png" alt="아이콘8"></div>
                        <h4 class="icon_tit">오시는 길</h4>
                    </a>
                </li>
            </ul>
        </div>
    </section>
</main>
<%@ include file="/footer.jsp" %>
</body>
</html>
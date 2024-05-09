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
<link rel="stylesheet" href="${path0 }/css/normalize2.css">
<link rel="stylesheet" href="${path0 }/css/common.css">
<%@ include file="/head.jsp" %>
<style>
.page { clear:both; width:1200px; min-height:100vh; margin:0 auto; margin-top:20px;}
.page::after { content: ""; display: block; width: 100%; clear: both; }
.page_title { text-align: center; padding-top: 2em; padding-bottom: 0.5em; }
#page1, #page2 { background-color:#ececec; min-height:calc(100vh - 320px); }
#page2 { margin-bottom: 10px;  }
.recommend { width:450px; height:500px; 
    padding:15px; margin:40px 60px; box-shadow:0px 0px 40px #666;
    float:left; border-bottom-right-radius: 80px; position: relative;}
.recommend p { text-align: center; font-size: 20px; font-weight: bold; }
.recommend .div_btn { text-align: right; padding-top: 20px; padding-right: 40px; }
.re_wrap { width:100%; clear:both; }	
.re_wrap:after { content:""; display: block; width:100%; clear:both; }
.subtitle { text-align:center; z-index:3}
.pos_box article { width:80px; height: 80px;
        text-align: center; border-radius:50px 50px 0px 50px; position:absolute; }
article.art1 { background-color:#ffff9c; top:-15px; left:150px; z-index:2; filter:opacity(60%);} 
article.art2 { background-color:#afebff; top:-15px; right:-360px; z-index:2; filter:opacity(60%);} 
.img_item { display:block; width:400px; height:auto; margin:30px auto;}

.tb_wrap { clear:both; width: 1200px; margin: 10px auto; padding-bottom: 20px; 
    margin-bottom: 20px; }
.tb_wrap:after { content:""; display:block; width: 100%; clear:both; }
.table { display:table; border-collapse: collapse; width:960px; 
    margin:10px auto; }
.table tr { display:table-row; }
.table td, .table th { display:table-cell; font-size:16px; }
.table td { line-height: 32px; border-bottom:1px solid #333; }
.table td:first-child, .table td:last-child { text-align:center; }
.table th { line-height: 36px; background-color:#333; color:#fff; }
.table td:nth-child(2) { width:800px; }
.table a.n_tit { display:block; width: 760px; padding: 0 20px; 
    white-space:nowrap; text-overflow: ellipsis; overflow:hidden; 
    font-weight: bold; }
.table a.n_tit:hover { text-decoration: underline; color:deepskyblue; }

.grid { clear: both; width: 1125px; margin: 0 auto; height: auto; padding-bottom: 100px; }
.grid li .box { width: 100%; height: 120px; background-color: #333;
    color: #fff; text-align: center; line-height: 120px; }
[class^=col] { float: left; margin-right: 15px; margin-top: 15px; }
[class^=col].last { margin-right: 0; }
.col1 { width: 80px; }
.col2 { width: 175px; }
.col3 { width: 270px; }
.col4 { width: 365px; }
.col5 { width: 460px; }
.col6 { width: 555px; }
.col7 { width: 650px; }
.col8 { width: 745px; }
.col9 { width: 840px; }
.col10 { width: 935px; }
.col11 { width: 1030px; }
.col12 { width: 1125px; }

.grid2 { clear: both; width: 100%; margin: 0 auto; padding-bottom: 100px; }
.grid2 li .box { width: 100%; height: 120px; background-color: #333; 
    color: #fff; text-align: center; line-height: 120px;}
[class^=can] { float: left; margin-right: 2%; margin-top: 2%; }
[class^=can].last { margin-right: 0; }
.can1 { width: 6.5%; }
.can2 { width: 15%; }
.can3 { width: 23.5%; }
.can4 { width: 32%; }
.can5 { width: 40.5%; }
.can6 { width: 49%; }
.can7 { width: 57.5%; }
.can8 { width: 66%; }
.can9 { width: 74.5%; }
.can10 { width: 83%;    }
.can11 { width: 91.5%; }
.can12 { width: 100%; }

.grid3 { position: relative; width: 1090px; margin: 0; padding-bottom: 100px; 
    height: 520px;}
.grid3 li { box-sizing: border-box; position: absolute; z-index: 5; 
    border-radius: 20px;}
.grid3 li .box { width: 100%; height: 100%; background-color: #333;
    color: #fff; text-align: center; line-height: 160px; font-size: 32px; }
.box1 { width: 500px; height: 240px; }
.box2 { width: 182px; height: 190px; }
#item1 { top: 30px; left: 30px; }
#item2 { top: 90px; right: 30px; }
#item3 { bottom: 130px; left: 30px; }
#item4 { bottom: 130px; left: 242px; }
#item5 { bottom: 70px; left: 454px; }
#item6 { bottom: 70px; left: 666px; }
#item7 { bottom: 70px; left: 878px; }

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
	    <!--
	   <ul>
	       <li class="item1"><img src="images/vs4.png" alt="배너1"></li>
	       <li class="item2"><img src="images/vs5.png" alt="배너2"></li>
	       <li class="item3"><img src="images/vs6.png" alt="배너3"></li>
	   </ul>
	   -->
        <img src="images/vs4.png" alt="배너1">
    </figure>
    <section id="page1" class="page">
        <div class="re_wrap">	
            <div class="recommend" id="recommend1">
                <div class="pos_box">
                    <article class="art1"></article>
                    <article class="art2"></article>
                </div>
                <h2 class="subtitle"><strong>제주의 축제</strong></h2>
                <img class="img_item" src="images/hanok.jpg" alt="한옥사진">
                <p>부평 문화의 거리에서 다양한 축제를 즐겨보세요!</p>
                <div class="div_btn">
                    <a href="#">
                        <button type="button" class="btns">더보기</button>
                    </a>
                </div>
            </div>
            <div class="recommend" id="recommend2">
                <h2 class="subtitle"><strong>맛집 소개</strong></h2>
                <img class="img_item" src="images/udo1.jpg" alt="한옥사진">
                <p>제주의 맛집을 소개합니다!</p>
                <div class="div_btn">
                    <a href="#">
                        <button type="button" class="btns">더보기</button>
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
                		<c:forEach var="dto" items="${notiList }">
                			<tr>
		                        <td>${dto.no }</td>
		                        <td><a href="" class="n_tit">${dto.title }</a></td>
		                        <td>${dto.resdate }</td>
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
        </div>
    </section>
    <section class="page" id="page6">
        <h2 class="page_title">아이콘 목록</h2>
        <div class="tb_wrap">
            <ul class="icon_lst">
                <li>
                    <a href="">
                        <div class="icon_fr"><img src="boxIcon1.png" alt="아이콘1"></div>
                        <h3 class="icon_tit">아이콘 제목</h3>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="icon_fr"><img src="boxIcon2.png" alt="아이콘2"></div>
                        <h3 class="icon_tit">아이콘 제목</h3>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="icon_fr"><img src="boxIcon3.png" alt="아이콘3"></div>
                        <h3 class="icon_tit">아이콘 제목</h3>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="icon_fr"><img src="boxIcon4.png" alt="아이콘4"></div>
                        <h3 class="icon_tit">아이콘 제목</h3>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="icon_fr"><img src="boxIcon5.png" alt="아이콘5"></div>
                        <h3 class="icon_tit">아이콘 제목</h3>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="icon_fr"><img src="boxIcon6.png" alt="아이콘6"></div>
                        <h3 class="icon_tit">아이콘 제목</h3>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="icon_fr"><img src="boxIcon7.png" alt="아이콘7"></div>
                        <h3 class="icon_tit">아이콘 제목</h3>
                    </a>
                </li>
                <li>
                    <a href="">
                        <div class="icon_fr"><img src="boxIcon8.png" alt="아이콘8"></div>
                        <h3 class="icon_tit">오시는 길</h3>
                    </a>
                </li>
            </ul>
        </div>
    </section>
    <section class="page" id="page3">
        <h2 class="page_title">정적 그리드</h2>
        <div class="tb_wrap">
            <ul class="grid clr-fix">
                <li class="col4">
                    <div class="box">col4</div>
                </li>
                <li class="col4">
                    <div class="box">col4</div>
                </li>
                <li class="col4 last">
                    <div class="box">col4</div>
                </li>
                <li class="col3">
                    <div class="box">col3</div>
                </li>
                <li class="col3">
                    <div class="box">col3</div>
                </li>
                <li class="col3">
                    <div class="box">col3</div>
                </li>
                <li class="col3 last">
                    <div class="box">col3</div>
                </li>
                <li class="col5">
                    <div class="box">col5</div>
                </li>
                <li class="col3">
                    <div class="box">col3</div>
                </li>
                <li class="col4 last">
                    <div class="box">col4</div>
                </li>
                <li class="col6">
                    <div class="box">col6</div>
                </li>
                <li class="col6 last">
                    <div class="box">col6</div>
                </li>
                <li class="col12">
                    <div class="box">col12</div>
                </li>
            </ul>
        </div>
    </section>
    <section class="page" id="page4">
        <h2 class="page_title">동적 그리드</h2>
        <div class="tb_wrap">
            <ul class="grid2 clr-fix">
                <li class="can4">
                    <div class="box">col4</div>
                </li>
                <li class="can4">
                    <div class="box">col4</div>
                </li>
                <li class="can4 last">
                    <div class="box">col4</div>
                </li>
                <li class="can3">
                    <div class="box">col3</div>
                </li>
                <li class="can3">
                    <div class="box">col3</div>
                </li>
                <li class="can3">
                    <div class="box">col3</div>
                </li>
                <li class="can3 last">
                    <div class="box">col3</div>
                </li>
                <li class="can5">
                    <div class="box">col5</div>
                </li>
                <li class="can3">
                    <div class="box">col3</div>
                </li>
                <li class="can4 last">
                    <div class="box">col4</div>
                </li>
                <li class="can6">
                    <div class="box">col6</div>
                </li>
                <li class="can6 last">
                    <div class="box">col6</div>
                </li>
                <li class="can12">
                    <div class="box">col12</div>
                </li>
            </ul>
        </div>
    </section>
    <section class="page" id="page5">
        <h2 class="page_title">절대좌표 그리드</h2>
        <div class="tb_wrap">
            <ul class="grid3 clr-fix">
                <li id="item1" class="box1">
                    <div class="box">item1</div>
                </li>
                <li id="item2" class="box1">
                    <div class="box">item2</div>
                </li>
                <li id="item3" class="box2">
                    <div class="box">item3</div>
                </li>
                <li id="item4" class="box2">
                    <div class="box">item4</div>
                </li>
                <li id="item5" class="box2">
                    <div class="box">item5</div>
                </li>
                <li id="item6" class="box2">
                    <div class="box">item6</div>
                </li>
                <li id="item7" class="box2">
                    <div class="box">item7</div>
                </li>
            </ul>
        </div>
    </section>
</main>
<%@ include file="/footer.jsp" %>
</body>
</html>
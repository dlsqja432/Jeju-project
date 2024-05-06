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
.table td, .table th { display:table-cell; font-size:16px; }
.table td { line-height: 32px; }
.table td:first-child{ padding-left:20px }
.table td:nth-child(3) { text-align:left; }
.table td:last-child { padding-left:32px; border-right: 1px solid #ececec; }
.table th { line-height: 36px; background-color:#ececec; color:#e33; text-align:right; }
.table a.n_tit { display:block; width: 610px; white-space:nowrap; 
	text-overflow: ellipsis; overflow:hidden; font-weight: bold; }
.table a.n_tit:hover { text-decoration: underline; color:deepskyblue; }
.table strong.n_tit { display:block; width: 610px; white-space:nowrap; 
	text-overflow: ellipsis; overflow:hidden; font-weight: bold; }
.btn-group { margin-left:40px; width:450px; }
</style>
</head>
<body>
<%@ include file="/header.jsp" %>
<main id="contents" class="clr-fix">
        <section class="page" id="page2">
            <nav id="side_bar">
                <ul>
                    <h3 id="side_bar_title">커뮤니티</h3>
                    <li><a href="${hpath }/NotiList.do">공지사항</a></li>
                    <li><a href="${hpath }/BoardList.do">자유게시판</a></li>
                    <li><a href="${hpath }/DataList.do">자료실</a></li>
                    <li><a href="${hpath }/GetQnaList.do">묻고답하기</a></li>
                </ul>
            </nav>
            <div class="tb_wrap">
                <h2 class="page_title" id="page_title1">자유게시판</h2>
                <ol class="breadcrumb">
                    <li><a href="/jejudo">Home</a></li>
                    <li><a href="#">자유게시판</a></li>
                    <li>자유게시판 목록</li>
                </ol>
                <div id="search">
                    <input type="text" id="inp1" value="제목" readonly>
                    <input type="text" id="inp2">
                    <button type="button" class="btn" id="search_btn">검색</button>
                </div>
                <table class="table" id="tb1">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성일</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:if test="${not empty boardList }">
                    		<c:forEach var="dto" items="${boardList }">
		                        <tr>
		                        	<td>${dto.no }</td>
		                            <td>
		                            	<c:if test="${empty sid }">
		                            		<strong class="n_tit">${dto.title }</strong>
		                            	</c:if>
		                            	<c:if test="${not empty sid }">
		                            		<a href="${path0 }/GetBoard.do?no=${dto.no}" class="n_tit">${dto.title }</a>
		                            	</c:if>
		                            </td>
		                            <td>
			                            <fmt:parseDate value="${dto.resdate }" var="res" pattern="yyyy-MM-dd HH:mm:ss" />
								 		<fmt:formatDate value="${res }" var="resdate" pattern="yyyy년 MM월 dd일" />
								 		${resdate }
		                            </td>
		                            <td>${dto.visited }</td>
		                        </tr>
                        	</c:forEach>
                        </c:if>
                    </tbody>
                </table>
                <script>
                $(document).ready(function(){
					$("#tb1").DataTable({
						order:[[0,"desc"]]
					});
				});
                </script>
                <hr>
				<c:if test="${not empty sid }">
					<div class="btn-group">
	 					<a href="${path0 }/board/board_ins.jsp" class="btns">글 작성</a>
					</div>
				</c:if>
            </div>
        </section>
    </main>
<%@ include file="/footer.jsp" %>
</body>
</html>
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
.table tr { height: 25px; }
.table td, .table th { font-size:16px; }
.table td { padding-left:24px; border-right: 1px solid #ececec; 
	border-bottom: 1px solid #ececec; line-height:25px; }
.table th { line-height: 25px; background-color:#ececec; color:#e33; text-align:center;
	width:110px; }
.table #td_title { font-weight:bold; }
.table #tr_content { height:450px; }
.table #th_content { line-height:450px; }
.btn-group { margin-left:40px; width:600px; }
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
                <h2 class="page_title" id="page_title1">묻고답하기</h2>
                <ol class="breadcrumb">
                    <li><a href="/jejudo">Home</a></li>
                    <li><a href="#">묻고답하기</a></li>
                    <li>
                    	<c:if test="${qna.plevel==1 }">
                    	질문 상세보기
                    	</c:if>
                    	<c:if test="${qna.plevel==2 }">
                    	답변 상세보기
                    	</c:if>
                    </li>
                </ol>
				<div class="page_wrap">
					<h3 class="page_title">
						<c:if test="${qna.plevel==1 }">
                    	질문 상세보기
                    	</c:if>
                    	<c:if test="${qna.plevel==2 }">
                    	답변 상세보기
                    	</c:if>
					</h3>
					<div>
						<table class="table">
							 <tbody>
							 	<tr>
							 		<th>글 번호</th>
							 		<td>${qna.no }</td>
							 	</tr>
							 	<tr>
							 		<th>글 제목</th>
							 		<td id="td_title">${qna.title }</td>
							 	</tr>
							 	<tr id="tr_content">
							 		<th id="th_content">글 내용</th>
							 		<td id="td_content">${qna.content }</td>
							 	</tr>
							 	<tr>
							 		<th>작성일시</th>
							 		<td>${qna.resdate }</td>
							 	</tr>
							 	<tr>
							 		<th>조회수</th>
							 		<td>${qna.visited }</td>
							 	</tr>
							 	<tr>
							 		<th>작성자</th>
							 		<td>${qna.aid }</td>
							 	</tr>
							 </tbody>
						</table>
						<hr>
						<div class="btn-group">
							<c:if test="${(not empty sid) and qna.plevel==1 }">
			 					<a href="${path0 }/qna/ans_ins.jsp?parno=${qna.no }" class="btns">답변 등록</a>
			 				</c:if>
			 				<c:if test="${sid.equals(qna.aid) }">
			 					<c:if test="${qna.plevel==1 }">
				 					<a href="${path0 }/EditQna.do?no=${qna.no }" class="btns">질문 수정</a>
				 					<a href="${path0 }/DelQuestion.do?parno=${qna.parno }" class="btns_red">질문 삭제</a>
			 					</c:if>
			 					<c:if test="${qna.plevel==2 }">
				 					<a href="${path0 }/EditQna.do?no=${qna.no }" class="btns">답변 수정</a>
				 					<a href="${path0 }/DelAnswer.do?no=${qna.no }" class="btns_red">답변 삭제</a>
			 					</c:if>
			 				</c:if>
			 				<a href="${path0 }/GetQnaList.do" class="btns">글 목록</a>
						</div>
					</div>
				</div>
            </div>
        </section>
    </main>
<%@ include file="/footer.jsp" %>
</body>
</html>
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
<style>
.container { width:1400px; }
.page { clear:both; min-height:100vh; margin:0; padding:0; }
#page1 { background-color:#ececec; min-height:calc(100vh - 158px);}
#page2 { background-color:#ffffff; }
#page3 { background-color:#ececec; }
#page4 { background-color:#ffffff; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents" class="container-fluid">
	<section class="page" id="page1">
		<div style="width:1400px; margin:15px auto;">
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item"><a href="${path0 }/BoardList.do">자유게시판</a></li>
			    <li class="breadcrumb-item active" aria-current="page">게시글 상세보기</li>
			  </ol>
			</nav>
			<hr>
		</div>
		<div style="width:1400px; margin:0px auto">
			<h3 class="page_title">${board.title }</h3>
			<div>
				<table class="table">
					 <tbody>
					 	<tr>
					 		<th>글 번호</th>
					 		<td>${board.no }</td>
					 	</tr>
					 	<tr>
					 		<th>글 제목</th>
					 		<td>${board.title }</td>
					 	</tr>
					 	<tr>
					 		<th>글 내용</th>
					 		<td>${board.content }</td>
					 	</tr>
					 	<tr>
					 		<th>작성일시</th>
					 		<td>${board.resdate }</td>
					 	</tr>
					 	<tr>
					 		<th>조회수</th>
					 		<td>${board.visited }</td>
					 	</tr>
					 </tbody>
				</table>
				<hr>
				<div class="btn-group">
				<c:if test="${sid.equals(board.aid) }">
 					<a href="${path0 }/EditBoard.do?no=${board.no }" class="btn btn-secondary">게시글 수정</a>
 					<a href="${path0 }/DelBoard.do?no=${board.no }" class="btn btn-danger">게시글 삭제</a>
				</c:if>
 				<a href="${path0 }/BoardList.do" class="btn btn-secondary">게시글 목록</a>
				</div>
			</div>
		</div>
	</section>

	<!-- 댓글 기능 구현 -->	
	<section class="page" id="page1">
		<div style="width:1400px; margin:15px auto; padding:10px;">
			<p style="margin:10px;"><strong>의견 쓰기</strong></p>
			<form action="${path0 }/ComentIns.do" method="post">
				<div style="text-align: right;">
					<input type="hidden" name="no" id="no" value="${board.no }">
					<input type="hidden" name="aid" id="aid" value="${sid }">
					<textarea name="content" id="content" rows="4" cols="80" class="form-control" placeholder="댓글을 입력해 주세요."></textarea><br>
					<button type="submit" class="btn btn-secondary">등록</button>
				</div>
			</form>
			<div style="width:1400px; margin:15px auto;">
				<br>
				<c:if test="${not empty comentList }">
				<table class=table style="width: 1400px;">
					<tbody>
						<c:forEach var="dto" items="${comentList }" varStatus="status">
						<tr>
							<th style="width: 150px">${dto.aid }</th>
							<td style="width: 1300px">${dto.content }<br><br>${dto.resdate }</td>
							<td style="width: 80px">
								<c:if test="${sid.equals(dto.aid) || sid.equals('admin') }">
									<a href="/pro01/DelComent.do?cno=${dto.cno }&no=${board.no }" class="btn btn-danger">삭제</a>
								</c:if>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				</c:if>
				<c:if test="${empty comentList}">
					<p>댓글이 없습니다.</p>
				</c:if>
			</div>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>
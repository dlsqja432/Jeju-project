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
<style>
.container {width:1400px; }
.page { clear:both; height:100vh; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
#page1 { background-color:#ececec }
th.item1 { width:5% }
th.item2 { width:60% }
th.item3 { width:20% }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents" class="container-fluid">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<nav aria-label="breadcrumb d-flex justify-content-between">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item"><a href="#">공지사항</a></li>
			    <li class="breadcrumb-item active" aria-current="page">공지사항 목록</li>
			  </ol>
			</nav>
		</div>
		<hr>
		<div style="width:1400px; margin:0 auto">
			<h3 class="page_title">공지사항 목록</h3>
			<div>
				<table class="table" id="tb1">
					 <thead class="thead-dark">
					 	<tr>
					 		<th class="item1">번호</th>
					 		<th class="item2">제목</th>
					 		<th class="item3">작성일</th>
					 		<th class="item4">조회수</th>
					 	</tr>
					 </thead>
					 <tbody>
					 	<c:if test="${not empty notiList }">
						 	<c:forEach var="dto" items="${notiList }">
						 	<tr>
						 		<td>${dto.no }</td>
						 		<td>
						 			<c:if test="${empty sid }">
						 			<strong>${dto.title }</strong>
						 			</c:if>
						 			<c:if test="${not empty sid }">
						 			<a href="${path0 }/GetNotice.do?no=${dto.no }">${dto.title }</a>
						 			</c:if>
						 		</td>
						 		<td>${dto.resdate }</td>
						 		<td>${dto.visited }</td>
						 	</tr>
						 	</c:forEach>
						 </c:if>
						 <c:if test="${empty notiList }">
						 	<tr>
						 		<td colspan="4"><strong>공지사항이 존재하지 않습니다.</strong></td>
						 	</tr>
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
				<c:if test="${sid.equals('admin') }">
				<div class="btn-group">
 					<a href="${path0 }/notice/noti_ins.jsp" class="btn btn-secondary">글 작성하기</a>
				</div>
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
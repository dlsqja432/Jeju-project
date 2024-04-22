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
.container {width:1400px; }
.page { clear:both; height:100vh; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
#page1 { background-color:#ececec }
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
			    <li class="breadcrumb-item active" aria-current="page">공지사항 글 수정</li>
			  </ol>
			</nav>
		</div>
		<hr>
		<div style="width:1400px; margin:0 auto">
			<h3 class="page_title">공지사항 글 수정</h3>
			<form action="${path0 }/EditProNotice.do" method="post">
				<input type="text" name="no" id="no" value="${noti.no }" readonly>
				<table class="table">
					 <tbody>
					 	<tr>
					 		<th><label for="title">제목</label></th>
					 		<td>
					 			<input type="text" name="title" id="title" class="form-control" value="${noti.title }" maxlength="100" required>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="content">내용</label></th>
					 		<td>
					 			<textarea name="content" id="content" rows="8" cols="80" class="form-control">${noti.content }</textarea>
					 		</td>
					 	</tr>
					 </tbody>
				</table>
				<p>작성 일시 : ${noti.resdate }</p>
				<p>조회수 : ${noti.visited }</p>
				<hr>
				<div class="btn-group">
 					<button type="submit" class="btn btn-secondary">글 수정완료</button>
 					<a href="${path0 }/NotiList.do" class="btn btn-secondary">글 목록</a>
				</div>
			</form>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>
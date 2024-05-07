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
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css">
<link rel="stylesheet" href="${path0 }/css/normalize2.css">
<link rel="stylesheet" href="${path0 }/css/common.css">
<style>
.container {width:1200px; }
.page { clear:both; height:100vh; }
.page_title { font-size:36px; padding-top:1.5em; text-align:center; }
</style>
</head>
<body>
<%@ include file="/header.jsp" %>
<div id="contents" class="container-fluid">
	<section class="page" id="page1">
		<c:if test="${not empty msg }">
		<div style="width:1200px; margin:0 auto; color:red;">${msg }</div>
		</c:if>
		<div style="width:1200px; margin:0 auto">
			<h3 class="page_title"><i class="fas fa-user-alt"></i> 로그인</h3>
			<form action="${path0 }/LoginPro.do" method="post">
				<table class="table">
					 <tbody>
					 	<tr>
					 		<th><label for="id">아이디</label></th>
					 		<td>
					 			<input type="text" name="id" id="id" class="form-control" required>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="pw">비밀번호</label></th>
					 		<td>
					 			<input type="password" name="pw" name="pw" id="pw" class="form-control" required>
					 		</td>
					 	</tr>
					 </tbody>
				</table>
				<hr>
				<div class="btn-group">
 					<button type="submit" class="btns" id="login_btn">로그인</button>
 					<button type="reset" class="btns_red">취소</button>
				</div>
			</form>
		</div>
	</section>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>
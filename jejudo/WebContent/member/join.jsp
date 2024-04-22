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
#id { width:1078px; float:left; margin-right:10px; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents" class="container-fluid">
	<section class="page" id="page1">
		<c:if test="${not empty msg }">
		<div style="width:1400px; margin:0 auto">${msg }</div>
		</c:if>
		<div style="width:1400px; margin:0 auto">
			<h3 class="page_title"><i class="fas fa-user-plus fa_fw"></i> 회원 가입</h3>
			<form action="${path0 }/JoinPro.do" method="post" onsubmit="return joinCheck(this)">
				<table class="table">
					 <tbody>
					 	<tr>
					 		<th><label for="id">아이디</label></th>
					 		<td>
					 			<input type="text" name="id" id="id" class="form-control" required>
					 			<button type="button" onclick="id_check()" class="btn btn-secondary">아이디 중복확인</button>
					 			<input type="hidden" id="idCheck" name="idCheck" value="false">
					 			<div id="msg1"></div>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="pw">비밀번호</label></th>
					 		<td>
					 			<input type="password" name="pw" id="pw" class="form-control" required>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="pw2">비밀번호 확인</label></th>
					 		<td>
					 			<input type="password" name="pw2" id="pw2" class="form-control" required>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="name">이름</label></th>
					 		<td>
					 			<input type="text" name="name" id="name" class="form-control" required>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="email">이메일</label></th>
					 		<td>
					 			<input type="email" name="email" id="email" class="form-control" required>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="tel">전화번호</label></th>
					 		<td>
					 			<input type="tel" name="tel" id="tel" class="form-control" required>
					 		</td>
					 	</tr>
					 </tbody>
				</table>
				<hr>
				<div class="btn-group">
 					<button type="submit" class="btn btn-secondary">회원가입</button>
 					<button type="reset" class="btn btn-secondary">취소</button>
				</div>
			</form>
			<script>
				function joinCheck(f) {
					if(f.pw.value != f.pw2.value) {
						alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
						f.pw.focus();
						return false;
					}
					if(f.idCheck.value != "true") {
						alert("아이디 중복 체크를 하지 않으셨습니다.");
						return false;
					}
				}
				
				function id_check() {
					if($("#id").val() == "") {
						alert("아이디를 입력하지 않으셨습니다.");
						$("#id").focus();
						return false;
					}
					var params = { id:$("#id").val() }; // params.id = jib;
					
					$.ajax({
						url:"${path0 }/IdCheck.do",
						type:"post",
						dataType:"json",
						data:params,
						success:function (data) {
							console.log(data.result);
							var idCk = data.result;
							if(idCk == false) {
								$("#msg1").html("<strong>사용 가능한 아이디 입니다.</strong>")
								$("#idCheck").val("true");
							} else {
								$("#msg1").html("<strong style='color:red'>중복된 아이디 입니다.</strong>")
								$("#idCheck").val("false");
							}
						}
					});
				}
			</script>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>
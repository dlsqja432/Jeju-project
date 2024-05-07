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
.container {width:1200px; }
.page { clear:both; height:100vh; }
.page_title { font-size:36px; padding-top:1.5em; text-align:center; }
#id { width:878px; float:left; margin-right:10px; }
#id_btn { margin:0; margin-left:15px; }
#post_btn { margin:0; margin-left:15px;}
</style>
</head>
<body>
<%@ include file="/header.jsp" %>
<div id="contents" class="container-fluid">
	<section class="page" id="page1">
		<c:if test="${not empty msg }">
		<div style="width:1200px; margin:0 auto">${msg }</div>
		</c:if>
		<div style="width:1200px; margin:0 auto">
			<h3 class="page_title"><i class="fas fa-user-plus fa_fw"></i> 회원 가입</h3>
			<form action="${path0 }/JoinPro.do" method="post" onsubmit="return joinCheck(this)">
				<table class="table">
					 <tbody>
					 	<tr>
					 		<th><label for="id">아이디</label></th>
					 		<td>
					 			<input type="text" name="id" id="id" class="form-control" placeholder="아이디를 입력해주세요." required>
					 			<button type="button" onclick="id_check()" id="id_btn" class="btns">중복확인</button>
					 			<input type="hidden" id="idCheck" name="idCheck" value="false">
					 			<div id="msg1"></div>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="pw">비밀번호</label></th>
					 		<td>
					 			<input type="password" name="pw" id="pw" class="form-control" placeholder="비밀번호를 입력해주세요." required>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="pw2">비밀번호 확인</label></th>
					 		<td>
					 			<input type="password" name="pw2" id="pw2" class="form-control" placeholder="비밀번호를 다시 입력해주세요." required>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="name">이름</label></th>
					 		<td>
					 			<input type="text" name="name" id="name" class="form-control" placeholder="이름을 입력해주세요." required>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="email">이메일</label></th>
					 		<td>
					 			<input type="email" name="email" id="email" class="form-control" placeholder="이메일을 입력해주세요." required>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="tel">전화번호</label></th>
					 		<td>
					 			<input type="tel" name="tel" id="tel" class="form-control" placeholder="전화번호를 입력해주세요." required>
					 		</td>
					 	</tr>
					 	<tr>
					 		<th><label for="post_btn">주소</label></th>
					 		<td>
					 			<p>주소 입력은 우편번호를 검색하여 입력하시길 바랍니다.</p>
					 			<input type="text" name="address1" id="address1" class="form-control" placeholder="기본 주소 입력" required><br>
					 			<input type="text" name="address2" id="address2" class="form-control" placeholder="상세 주소 입력" required><br>
					 			<input type="text" name="postcode" id="postcode" class="form-control" style="width:160px; float:left;" placeholder="우편 번호" required>
					 			<div class="btn_group" style="float:left;">
					 				<button type="button" id="post_btn" class="btns_blue" onclick="findAddr()">우편번호 검색</button>
					 			</div>
					 		</td>
					 	</tr>
					 </tbody>
				</table>
				<hr>
				<div class="btn-group">
 					<button type="submit" class="btns">회원가입</button>
 					<button type="reset" class="btns_red">취소</button>
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
			<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    		<!-- CDN 방식 사용 -->
			<script>
			function findAddr() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업을 통한 검색 결과 항목 클릭 시 실행
		                var addr = ''; // 주소_결과값이 없을 경우 공백 
		                var extraAddr = ''; // 참고항목
		
		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 도로명 주소를 선택
		                    addr = data.roadAddress;
		                } else { // 지번 주소를 선택
		                    addr = data.jibunAddress;
		                }
		
		                if(data.userSelectedType === 'R'){
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                } else {
		                    document.getElementById("UserAdd1").value = '';
		                }
		
		                // 선택된 우편번호와 주소 정보를 input 박스에 넣는다.
		                document.getElementById('zipp_code_id').value = data.zonecode;
		                document.getElementById("UserAdd1").value = addr;
		                document.getElementById("UserAdd1").value += extraAddr;
		                document.getElementById("UserAdd2").focus(); // 우편번호 + 주소 입력이 완료되었음으로 상세주소로 포커스 이동
		            }
		        }).open();
		    }
			</script>
		</div>
	</section>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>
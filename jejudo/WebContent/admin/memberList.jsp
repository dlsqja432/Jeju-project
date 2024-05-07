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
.table td:first-child{ padding-left:20px; width:40px; }
.table td:nth-child(2){ width:235px; }
.table td:nth-child(4){ width:160px; }
.table td:last-child { padding-left:36px; border-right: 1px solid #ececec; width:80px; }
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
                    <h3 id="side_bar_title">관리자</h3>
                    <li><a href="${hpath }/MemberList.do">회원 관리</a></li>
                    <li><a href="${hpath }/NotiList.do">공지사항 관리</a></li>
                    <li><a href="${hpath }/BoardList.do">자유게시판 관리</a></li>
                </ul>
            </nav>
            <div class="tb_wrap">
            	<form id="checkboxForm" action="${path0 }/DelMember2.do" method ="post">
                <h2 class="page_title" id="page_title1">회원 관리</h2>
                <table class="table" id="tb1">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>아이디</th>
                            <th>비밀번호</th>
                            <th>생성일자</th>
                            <th>계정삭제</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:if test="${not empty memList }">
                    		<c:forEach var="dto" items="${memList }" varStatus="status">
		                        <tr>
		                        	<td>${status.count }</td>
		                            <td>${dto.id }</td>
		                            <td>${dto.pw }</td>
		                            <td>
			                            <fmt:parseDate value="${dto.jdate }" var="res" pattern="yyyy-MM-dd HH:mm:ss" />
								 		<fmt:formatDate value="${res }" var="resdate" pattern="yyyy년 MM월 dd일" />
								 		${resdate }
		                            </td>
		                            <td>
		                            	<input type="checkbox" name="ck" value="${dto.id }">
		                            	<div id="result"></div>
		                            </td>
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
				<c:if test="${sid.equals('admin') }">
					<div class="btn-group">
	 					<button type="button" onclick="handleCheckboxValues()" class="btns_red" id="submitButton">계정 삭제</button>
					</div>
				</c:if>
				</form>
				<script>
				function handleCheckboxValues() {
				 	var checkedValues = [];

		            // 체크된 체크박스의 값을 수집
		            var checkboxes = document.querySelectorAll('input[type="checkbox"]:checked');
		            checkboxes.forEach(function(checkbox) {
		                checkedValues.push(checkbox.value);
		            });
		            
		         	// AJAX를 사용하여 서버로 데이터 전송
		            var xhr = new XMLHttpRequest();
		            xhr.open("POST", "${path0 }/DelMember2.do", true);
		            xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
		            xhr.onreadystatechange = function() {
		                if (xhr.readyState == 4 && xhr.status == 200) {
		                    console.log("Response from server: " + xhr.responseText);
		                }
		            };
		            xhr.send(JSON.stringify(checkedValues));
		            setTimeout(function() {
		                location.reload();
		            }, 300);
				}
				</script>
            </div>
        </section>
    </main>
<%@ include file="/footer.jsp" %>
</body>
</html>
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
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div>

	<nav id="quick">
		<ul>
			<li><span class="q_tit">QUICK</span></li>
			<li><a href="">메뉴1</a></li>
			<li><a href="">메뉴2</a></li>
			<li><a href="">메뉴3</a></li>
		</ul>
	</nav>
    

</div>

<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>
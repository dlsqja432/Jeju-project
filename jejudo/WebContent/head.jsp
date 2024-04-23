<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ipath" value="<%=request.getContextPath() %>" />
<script src="${ipath }/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${ipath }/css/bootstrap.min.css" />
<script src="${ipath }/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.0/css/all.min.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="subject" content="제주도 소개(Jejudo Intro)" />
<meta name="description" content="부평동, 문화의 거리, 맛집, 교통, 소개" />
<meta name="keywords" content="부평동, 문화의 거리, 맛집, 교통, 소개" />
<link rel="icon" href="${ipath }/images/favicon.png" />
<link rel="shortcut icon" href="${ipath }/images/favicon.png" />
<meta property="og:type" content="website" />
<meta property="og:title" content="bupyeongdong" />
<meta property="og:description" content="부평동, 문화의 거리, 맛집, 교통, 소개" />
<meta property="og:image" content="${ipath }/images/site.png" />
<meta property="og:url" content="http://localhost:8091" />
<link rel="stylesheet" href="${ipath }/css/common.css" />
<style>
#footer {
	position: relative;
	padding: 5px 0;
	background: linear-gradient(110deg, #afebff 79.5% , #ffff9c  60%);
	border-top: 3px solid #004691;
	color: #000000;
}

#fnb ul li a { color:#000; }

</style>	

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- css -->
<link rel="stylesheet" href="css/notice/notice_main.css">
<link rel="stylesheet" href="css/main.css">
<!-- fontawesome -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
<!-- js -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Raleway&display=swap"	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap"	rel="stylesheet">
<title>Document</title>
</head>
<body>
	<%@ include file="../main/header.jsp"%>
	<section class="notice-content-wrapper">

		<div class="notice-content-container">

			<div class="notice-content-header">
				<div class="notice-content-header-title">
					<strong>N O T I C E</strong>
				</div>
			</div>

			<div class="content-list-header-wrapper">
				<div class="notice-content-list-header">
					<div class="notice-content-list-header-no">No</div>
					<div class="notice-content-list-header-subject">Subject</div>
					<div class="notice-content-list-header-name">Name</div>
					<div class="notice-content-list-header-date">Date</div>
					<div class="notice-content-list-header-view">View</div>
				</div>
			</div>

			<c:set var="num" value="${listCount-(page-1)*10}"/>

			<div class="notice-content-list-item-wrapper">
				<c:forEach var="n" items="${list}">
					<div class="notice-content-list-item">
						<div class="notice-content-list-item-no">
							<c:out value="${num}"/>
							<c:set var="num" value="${num-1}"/>
						</div>
						<div class="notice-content-list-item-subject">
							<a href="notice_detail.shop?notice_id=${n.notice_id}&page=${page}">${n.notice_subject}</a>
						</div>
						<div class="notice-content-list-item-name">${n.notice_writer}</div>
						<div class="notice-content-list-item-date">
							<fmt:formatDate value="${n.notice_date}" pattern="yyyy-MM-dd"/> 
						</div>
						<div class="notice-content-list-item-view">${n.notice_view}</div>
					</div>
				</c:forEach>

				<!-- 페이지 버튼 -->
				<div class="notice-content-list-btn">
					<c:if test="${page <=1 }"><i class="fas fa-chevron-left"></i>&nbsp;</c:if>
					<c:if test="${page > 1 }"><a href="notice.shop?page=${page-1}"><i class="fas fa-chevron-left"></i></a>&nbsp;</c:if>
					
					<c:forEach var="m" begin="${startPage}" end="${endPage}">
						<c:if test="${m == page }">${m}&nbsp;</c:if>
						<c:if test="${m != page }">
							<a href="notice.shop?page=${m}">${m}&nbsp;</a>
						</c:if>
					</c:forEach>
					
					<c:if test="${page >= maxPage }"><i class="fas fa-chevron-right"></i></c:if>
					<c:if test="${page < maxPage }"><a href="notice.shop?page=${page+1}"><i class="fas fa-chevron-right"></i></a></c:if>
				</div>
			</div>

		</div>

	</section>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>
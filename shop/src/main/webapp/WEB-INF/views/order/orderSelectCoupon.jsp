<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modern</title>
<link rel="stylesheet" href="css/order/order_couponlist.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="js/order/order_couponlist.js"></script>
<script src="js/order/order.js"></script>
</head>
<body>
	<div class="container">
		<div>
			<div class="couponlist-wrapper">
				<div class="subject kor">쿠폰 조회 / 사용</div>
				<div class="couponlist-container">
					<div class="couponlist-nav-wrapper">
						<div class="couponlist-nav-content kor"> 쿠폰 번호</div>
						<div class="couponlist-nav-content kor"> 쿠폰 이름</div>
						<div class="couponlist-nav-content kor"> 할인 금액</div>
						<div class="couponlist-nav-content kor"> 적용 범위</div>
						<div class="couponlist-nav-content kor"> 유효기간</div>
					</div>
					<c:forEach var="couponlist" items="${couponList}">
					<div class="couponlist-content-wrapper" onClick="couponSelectOne(${couponlist.coupon_id},${order_detail_pk})">
						<div class="couponlist-content kor">${couponlist.coupon_id}</div>
						<div class="couponlist-content kor">${couponlist.coupon_name}</div>
						<c:if test="${couponlist.coupon_discount >100}">
						<div class="couponlist-content kor">${couponlist.coupon_discount}원</div>
						</c:if>
						<c:if test="${couponlist.coupon_discount <100}">
						<div class="couponlist-content kor">${couponlist.coupon_discount}%</div>
						</c:if>
						<div class="couponlist-content kor">일부상품</div>
						<div class="couponlist-content date-content kor">
							<fmt:formatDate pattern="yyyy.MM.dd" value="${couponlist.coupon_date}"/>-
							<fmt:formatDate pattern="yyyy.MM.dd" value="${couponlist.coupon_expiration}"/>
						</div>
					</div>
					</c:forEach>
				</div>
				<div class="close-btn">
					<button class="kor">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
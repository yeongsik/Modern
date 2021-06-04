<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="member-content-header">
		<div class="member-content-header-memberinfo">
			<div class="member-content-header-memberinfo-grade">GOLD</div>
			<div class="member-content-header-memberinfo-content">
				<span>${m.nickname}</span>님 안녕하세요 <input type="button" value="등급 혜택 보기">
			</div>
		</div>
		<div class="member-content-hedaer-coupon">
			<div class="member-content-header-coupon-header">쿠폰</div>
			<div class="member-content-header-coupon-content">
				<span>0 </span>개
			</div>
		</div>
		<div class="member-content-header-point">
			<div class="member-content-header-point-header">포인트</div>
			<div class="member-content-header-point-content">
				<span>${m.purchase_point}</span>p
			</div>
		</div>
	</div>
</body>
</html>
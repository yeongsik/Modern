<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>쿠폰 관리</title>
	<!-- css -->
	<link rel="stylesheet" href="css/member/member_coupon_management.css">
	<!-- 구글 폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
	<!-- js -->
	<script src="https://code.jquery.com/jquery-latest.js"></script>
	<script src="js/member/member_coupon_management.js"></script>
</head>
<body>
	<%@ include file="../main/header.jsp"%>
	<section class="container">
		<form method="post" action="member_coupon_create.shop">
			<div class="coupon-create-wrapper">
				<div class="coupon-create-title">쿠폰 발급</div>
				<div class="coupon-create-content-wrap">
                    <div class="coupon-create-label kor">쿠폰명</div>
                    <input type="text" class="coupon-create-content-input kor" id="coupon-name" name="coupon_name" placeholder="쿠폰명 입력">
                </div>
                <div class="coupon-create-content-wrap">
                	<div class="coupon-create-label kor">쿠폰 용도</div>
                	<select class="coupon-create-content-select" id="pupose" name="purpose">
                		<option id="self" value="9900000">직접입력</option>
                		<option id="register" value="1100000">회원가입 축하 쿠폰</option>
                		<option id="birth" value="2200000">생일쿠폰</option>
                		<option id="bronze" value="3300000">월간쿠폰(Bronze)</option>
                		<option id="silver" value="4400000">월간쿠폰(Silver)</option>
                		<option id="gold" value="5500000">월간쿠폰(Gold)</option>
                		<option id="platinum" value="6600000">월간쿠폰(Platinum)</option>
                	</select>
                </div>
				<div class="coupon-create-content-wrap">
                    <div class="coupon-create-label kor">할인율/할인금액</div>
					<input type="text" class="coupon-create-content-input" id="coupon-discount" name="coupon_discount" placeholder="100미만 할인율, 100이상 할인금액">
				</div>
				<div class="coupon-create-content-wrap">
                    <div class="coupon-create-label kor">쿠폰 만기일</div>
                    <input type="text" class="coupon-create-content-input kor" id="coupon-expiration" name="coupon_expiration_val" placeholder="ex) 30일 : 30">
				</div>
                <div class="coupon-create-content-wrap">
                	<div class="coupon-create-label kor">쿠폰 지급할 아이디</div>
                	<input type="text" class="coupon-create-content-input" name="member_id" placeholder="쿠폰 지급할 아이디">
                </div>
				<div class="coupon-create-content-wrap">
					<input type="submit" class="coupon-create-submit kor" value="발급">
				</div>
			</div>
		</form>
	</section>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>
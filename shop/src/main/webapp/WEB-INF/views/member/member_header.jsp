<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
	<div class="member-content-header">
		<div class="member-content-header-memberinfo">
			<div class="member-content-header-memberinfo-grade eng">${m.grade}</div>
			<div class="member-content-header-memberinfo-content kor">
				<span>${m.name}</span>님 안녕하세요 <input class="kor" type="button" value="등급 혜택 보기">
			</div>
		</div>
		<div class="member-content-hedaer-common">
			<div class="member-content-header-coupon-header kor">쿠폰</div>
			<div class="member-content-header-coupon-content kor">
				<a href="member_coupon.shop"><span>${countCoupon} </span>개</a>
			</div>
		</div>
		<div class="member-content-hedaer-common">
			<div class="member-content-header-point-header kor">포인트</div>
			<div class="member-content-header-point-content kor">
				<a href="member_point.shop"><span>${m.purchase_point}</span>p</a>
			</div>
		</div>
	</div>
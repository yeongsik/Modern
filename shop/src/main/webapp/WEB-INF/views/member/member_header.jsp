<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
	<div class="member-content-header">
		<div class="member-content-header-memberinfo">
			<div class="member-content-header-memberinfo-grade eng">GOLD</div>
			<div class="member-content-header-memberinfo-content kor">
				<span>${m.name}</span>님 안녕하세요 <input class="kor" type="button" value="등급 혜택 보기">
			</div>
		</div>
		<div class="member-content-hedaer-coupon">
			<div class="member-content-header-coupon-header kor">쿠폰</div>
			<div class="member-content-header-coupon-content kor">
				<span>0 </span>개
			</div>
		</div>
		<div class="member-content-header-point">
			<div class="member-content-header-point-header kor">포인트</div>
			<div class="member-content-header-point-content kor">
				<span class="kor">${m.purchase_point}</span>p
			</div>
		</div>
	</div>
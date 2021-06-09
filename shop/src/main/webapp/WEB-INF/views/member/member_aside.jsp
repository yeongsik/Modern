<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/member/member_aside.js"></script>
<script>
	<c:set var="id" value="${m.member_id}"/>
	var m_id = '<c:out value='${id}'/>';
</script>

<div class="member-content-nav-container">
	<div class="member-content-nav-items">
	  <ul>
	    <li class="member-content-nav-items-title kor">주문관리</li>
	    <li class="member-content-nav-items-subtitle"><a href="member_order.shop" id="order" class="kor">주문 / 배송 조회</a></li>
	    <li class="member-content-nav-items-subtitle"><a href="member_cancel.shop" id="cancel" class="kor">취소 / 교환 / 반품조회</a></li>
	    <li class="member-content-nav-items-title kor">나의 정보</li>
	    <li class="member-content-nav-items-subtitle"><a href="member_profile.shop" id="info" class="kor">회원정보 수정</a></li>
	    <li class="member-content-nav-items-subtitle"><a href="member_withdraw_view.shop" id="withdraw" class="kor">회원탈퇴</a></li>
	    <li class="member-content-nav-items-title kor">활동 내역</li>
	    <li class="member-content-nav-items-subtitle"><a href="member_membership.shop" id="grade" class="kor">회원 등급</a></li>
	    <li class="member-content-nav-items-subtitle"><a href="member_board.shop" id="review" class="kor">구매 후기</a></li>
	    <li class="member-content-nav-items-subtitle"><a href="member_item_question.shop" id="item_question" class="kor">상품 문의</a></li>
	    <li class="member-content-nav-items-subtitle"><a href="member_personal_question.shop" id="personal_question" class="kor">1:1 문의</a></li>
	    <li class="member-content-nav-items-title kor">쿠폰 및 포인트</li>
	    <li class="member-content-nav-items-subtitle"><a href="member_coupon.shop" id="coupon" class="kor">쿠폰</a></li>
	    <li class="member-content-nav-items-subtitle"><a href="member_point.shop" id="point" class="kor">포인트</a></li>
	    <li class="member-content-nav-items-title"><a href="member_cart.shop" id="cart" class="kor">장바구니</a></li>
	    <li class="member-content-nav-items-title"><span class="kor" id="interest" onClick="goInterest()">관심상품</span></li>
	  </ul>
	</div>
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- css -->
<link rel="stylesheet" href="css/member/member_main.css">
<!-- js -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Raleway&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap"
	rel="stylesheet">
<title>마이페이지</title>
</head>
<body>
	<%@ include file="../main/header.jsp"%>

<%-- 	<c:if test="${sessionScope.id == null }"> 
		  <script>
			   alert("로그인이 필요한 서비스 입니다.");
			   location.href="login.shop";
		  </script>
		</c:if>
		<c:if test="${sessionScope.id != null }"> --%>
	<section class="member-content-wrapper">
		<div class="member-content-container">
			<%@ include file="../member/member_header.jsp"%>

			<!-- article -->
			<div class="member-content-section">
				<div class="member-content-section-order">
					<div class="member-content-section-order-title">ORDER</div>
					<div class="member-content-section-order-subtitle">
						<a href="member_order.shop">주문내역</a>
					</div>
				</div>
				<div class="member-content-section-profile">
					<div class="member-content-section-profile-title">PROFILE</div>
					<div class="member-content-section-profile-subtitle">
						<a href="member_profile.shop">회원정보</a>
					</div>
				</div>
				<div class="member-content-section-cart">
					<div class="member-content-section-cart-title">CART</div>
					<div class="member-content-section-cart-subtitle">
						<a href="member_cart.shop">쇼핑백</a>
					</div>
				</div>
				<div class="member-content-section-coupon">
					<div class="member-content-section-coupon-title">COUPON</div>
					<div class="member-content-section-coupon-subtitle">
						<a href="member_coupon.shop">쿠폰내역</a>
					</div>
				</div>
				<div class="member-content-section-board">
					<div class="member-content-section-board-title">BOARD</div>
					<div class="member-content-section-board-subtitle">
						<a href="member_board.shop">게시물 관리</a>
					</div>
				</div>
				<div class="member-content-section-address">
					<div class="member-content-section-address-title">ADDRESS</div>
					<div class="member-content-section-address-subtitle">
						<a href="member_address.shop">배송지 관리</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%-- 	</c:if> --%>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>
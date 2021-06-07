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
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">
  <!-- fontawesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
  <title>마이페이지</title>
</head>
<body>
	<%@ include file="../main/header.jsp"%>
	<section class="container">
		<div class="main-content-wrapper">
			<%@ include file="../member/member_header.jsp"%>
		
			<!-- article -->
			<div class="member-content-section">
				<div class="mypage-main-section-wrapper mypage-margin-bottom">
					<div class="mypage-main-section-title eng">ORDER</div>
					<div class="mypage-main-section-subtitle">
						<a href="member_order.shop" class="kor">주문내역</a>
					</div>
				</div>
				<div class="mypage-main-section-wrapper mypage-margin-bottom">
					<div class="mypage-main-section-title eng">PROFILE</div>
					<div class="mypage-main-section-subtitle">
						<a href="member_profile.shop" class="kor">회원정보</a>
					</div>
				</div>
				<div class="mypage-main-section-wrapper mypage-margin-bottom">
					<div class="mypage-main-section-title eng">CART</div>
					<div class="mypage-main-section-subtitle">
						<a href="member_cart.shop" class="kor">쇼핑백</a>
					</div>
				</div>
				<div class="mypage-main-section-wrapper">
					<div class="mypage-main-section-title eng">COUPON</div>
					<div class="mypage-main-section-subtitle">
						<a href="member_coupon.shop" class="kor">쿠폰내역</a>
					</div>
				</div>
				<div class="mypage-main-section-wrapper">
					<div class="mypage-main-section-title eng">BOARD</div>
					<div class="mypage-main-section-subtitle">
						<a href="member_board.shop" class="kor">게시물 관리</a>
					</div>
				</div>
				<div class="mypage-main-section-wrapper">
					<div class="mypage-main-section-title eng">ADDRESS</div>
					<div class="mypage-main-section-subtitle">
						<a href="member_address.shop" class="kor">배송지 관리</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>
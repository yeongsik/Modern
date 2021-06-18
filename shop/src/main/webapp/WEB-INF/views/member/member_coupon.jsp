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
<title>Modern</title>
<!-- css -->
<link rel="stylesheet" href="css/member/member_coupon.css">
<!-- js -->
<script src="http://code.jque	ry.com/jquery-latest.js"></script>
<script src="js/member/member_coupon.js"></script>
<script src="js/main.js"></script>
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap">
<!-- fontawesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body>
	<%@ include file="../main/header.jsp"%>
	<section class="container">
		<!-- content header -->
		<div class="main-content-wrapper">
			<%@ include file="../member/member_header.jsp"%>

			<!-- content main -->
			<div class="member-content-main-container">
				<!-- aside -->
				<%@ include file="../member/member_aside.jsp"%>
				<!-- article -->
				<div class="member-content-article-container">
					<div class="member-content-article-header kor">쿠폰</div>

					<div class="member-content-article-options kor">
						${countCoupon}개 <select>
							<option class="kor">최신순</option>
							<option class="kor">할인순</option>
						</select>
					</div>
					<div class="member-content-article-items">
						<div class="member-content-article-items-header">
							<div class="member-content-article-items-header-coupon_num kor">쿠폰 번호</div>
							<div class="member-content-article-items-header-coupon_name kor">쿠폰명</div>
							<div class="member-content-article-items-header-coupon_discount kor">할인금액</div>
							<div class="member-content-article-items-header-coupon_available_area kor">적용 범위</div>
							<div class="member-content-article-items-header-coupon_valid_date kor">유효기간</div>
						</div>
						<div class="member-content-article-items-showcase">
							<c:forEach var="c" items="${cpList}">
								<div class="member-content-article-items-showcase-list" id="items1">
									<div class="member-content-article-items-coupon_num kor">${c.coupon_id}</div>
									<div class="member-content-article-items-coupon_name kor">${c.coupon_name}</div>
									<c:if test="${c.coupon_discount > 100}">
										<div class="member-content-article-items-coupon_discount kor">${c.coupon_discount}원</div>
									</c:if>
									<c:if test="${c.coupon_discount < 100}">
										<div class="member-content-article-items-coupon_discount kor">${c.coupon_discount}%</div>
									</c:if>
									<div class="member-content-article-items-coupon_available_area kor">일부 상품</div>
									<div class="member-content-article-items-coupon_valid_date">
										<div class="member-content-article-items-coupon_valid_date-date kor">${c.coupon_date} - ${c.coupon_expiration}</div>
<%-- 										<fmt:formatDate pattern="yyyy-MM-dd" value="${c.coupon_date }"/> - 
										<fmt:formatDate pattern="yyyy-MM-dd" value="${c.coupon_expiration}"/> --%>
										<br><span class="kor">30일 남음</span><!-- 미구현 -->
										<%-- <fmt:formatDate dateStyle="short" value="${c.coupon_expiration}-${c.coupon_date}"/> --%>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>
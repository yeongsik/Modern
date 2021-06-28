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
					<!-- 관리자 쿠폰 발급페이지 이동버튼 테스트용, 추후 가리고 관리자페이지로 넘기기 -->
					<div style="display:flex; justify-content: flex-end; align-items: center;margin:10px;">
						<input type="button" value="쿠폰발급" onclick="location.href='member_coupon_management.shop'">
					</div>
					<div class="member-content-coupon-count kor">총 ${countCoupon}개</div>
					<div class="member-content-article-items">
						<div class="member-content-article-items-header">
							<div class="member-content-article-items-header-coupon_num kor">쿠폰 번호</div>
							<div class="member-content-article-items-header-coupon_name kor">쿠폰명</div>
							<div class="member-content-article-items-header-coupon_discount kor">할인금액</div>
							<div class="member-content-article-items-header-coupon_available_area kor">적용 범위</div>
							<div class="member-content-article-items-header-coupon_valid_date kor">유효기간</div>
						</div>
						<c:if test="${listCount!=0}">
							<c:forEach var="c" items="${cpList}">
								<div class="member-content-article-items-showcase">
									<div class="member-content-article-items-showcase-list">
										<div class="member-content-article-items-coupon_num kor">${c.coupon_id}</div>
										<div class="member-content-article-items-coupon_name kor">${c.coupon_name}</div>
										<c:if test="${c.coupon_discount > 100}">
											<div class="member-content-article-items-coupon_discount kor">
											<!-- &#8361; --> 
											<fmt:formatNumber type="number" maxFractionDigits="3"  value="${c.coupon_discount}" />원 </div>
										</c:if>
										<c:if test="${c.coupon_discount < 100}">
											<div class="member-content-article-items-coupon_discount kor">${c.coupon_discount}%</div>
										</c:if>
										<div class="member-content-article-items-coupon_available_area kor">일부 상품</div>
										<div class="member-content-article-items-coupon_valid_date kor">
											<fmt:formatDate pattern="yyyy-MM-dd" value="${c.coupon_date }"/> - 
											<fmt:formatDate pattern="yyyy-MM-dd" value="${c.coupon_expiration}"/>
										</div>
									</div>
								</div>
							</c:forEach>
							<div class="member_coupon_paging">
								<c:if test="${page <=1 }"><i class="fas fa-chevron-left">&ensp;</i></c:if>
								<c:if test="${page > 1 }"><a href="member_coupon.shop?page=${page-1}"><i class="fas fa-chevron-left"></i></a>&ensp;</c:if>
								
								<c:forEach var="m" begin="${startPage}" end="${endPage}">
									<c:if test="${m == page }">${m}&ensp;</c:if>
									<c:if test="${m != page and m < maxPage}">
										<a href="member_coupon.shop?page=${m}">${m}&ensp;</a>
									</c:if>
									<c:if test="${m != page and m == maxPage }">
										<a href="member_coupon.shop?page=${m}">${m}</a>
									</c:if>
								</c:forEach>
								
								<c:if test="${page >= maxPage }"><i class="fas fa-chevron-right"></i></c:if>
								<c:if test="${page < maxPage }">&ensp;<a href="member_coupon.shop?page=${page+1}"><i class="fas fa-chevron-right"></i></a></c:if>
							</div>
						</c:if>
						<c:if test="${listCount==0}">
							<div class="member-content-article-items-fail_msg">보유중인 쿠폰이 없습니다.</div>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>
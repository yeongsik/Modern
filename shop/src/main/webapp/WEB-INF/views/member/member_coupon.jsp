<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<!-- css -->
	<link rel="stylesheet" href="css/member/member_coupon.css">
	<link rel="stylesheet" href="css/main.css">
	<!-- js -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/member/member_coupon.js"></script>
	<script src="js/main.js"></script>
	<!-- 구글 폰트 -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Raleway&display=swap">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap">
	<!-- fontawesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body>
  <%@ include file="../main/header.jsp"%>
  <section class="member-content-wrapper">
    <!-- content header -->
    <div class="member-content-container">
      <%@ include file="../member/member_header.jsp"%>  

      <!-- content main -->
      <div class="member-content-main-container">
        <!-- aside -->
        <%@ include file="../member/member_aside.jsp" %>

        <!-- article -->
        <div class="member-content-article-container">
          <div class="member-content-article-header">쿠폰</div>

          <div class="member-content-article-options">
            2장
            <select>
              <option>최신순</option>
              <option>할인순</option>
            </select>
          </div>
          <div class="member-content-article-items">
            <div class="member-content-article-items-header">
                <div class="member-content-article-items-header-coupon_num">쿠폰 번호</div>
                <div class="member-content-article-items-header-coupon_name">쿠폰명</div>
                <div class="member-content-article-items-header-coupon_discount">할인금액</div>
                <div class="member-content-article-items-header-coupon_available_area">적용 범위</div>
                <div class="member-content-article-items-header-coupon_valid_date">유효기간</div>
            </div>

            <div class="member-content-article-items-showcase">
              <div class="member-content-article-items-showcase-list" id="items1">
                <div class="member-content-article-items-coupon_num">21002</div>
                <div class="member-content-article-items-coupon_name">생일 기념 쿠폰</div>
                <div class="member-content-article-items-coupon_discount">10%</div>
                <div class="member-content-article-items-coupon_available_area">일부 상품</div>
                <div class="member-content-article-items-coupon_valid_date">
                  <div class="member-content-article-items-coupon_valid_date-date">2021.05.15 - 2021.06.15</div>
                  <span>30일 남음</span>
                </div>
              </div>
              
              <div class="member-content-article-items-showcase-list" id="items2">
                <div class="member-content-article-items-coupon_num">21001</div>
                <div class="member-content-article-items-coupon_name">실버회원 전용 쿠폰</div>
                <div class="member-content-article-items-coupon_discount">5%</div>
                <div class="member-content-article-items-coupon_available_area">일부 상품</div>
                <div class="member-content-article-items-coupon_valid_date">
                  <div class="member-content-article-items-coupon_valid_date-date">2021.05.15 - 2021.06.15</div>
                  <span>30일 남음</span>
                </div>
              </div>

            </div>
          </div>
          </div>
        </div>
      </div>
    </div>
  </section>  
   <%@ include file="../main/footer.jsp"%>  
</body>
</html>
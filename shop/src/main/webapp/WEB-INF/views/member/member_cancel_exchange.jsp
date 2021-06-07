<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>취소/교환 조회</title>
	<!-- css -->
	<link rel="stylesheet" href="css/member/member_cancel_exchange.css">
	<link rel="stylesheet" href="css/main.css">
	<!-- js -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
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
  <section class="container">
    <!-- content header -->
    <div class="main-content-wrapper">
      <%@ include file="../member/member_header.jsp"%>  

      <!-- content main -->
      <div class="member-content-main-container">
        <!-- aside -->
        <%@ include  file="../member/member_aside.jsp"%>

        <!-- article -->
        <div class="member-content-article-container">
          <div class="member-content-article-header">취소 / 교환 / 반품 조회</div>

          <div class="member-content-article-options">
            총 2건
            <select>
              <option>날짜순</option>
              <option>1개월</option>
              <option>3개월</option>
              <option>6개월</option>
            </select>
          </div>

          <div class="member-content-article-items">
            <div class="member-content-article-items-header">
                <div class="member-content-article-items-header-sub1">주문일</div>
                <div class="member-content-article-items-header-sub2">주문번호</div>
                <div class="member-content-article-items-header-sub3">상품정보</div>
                <div class="member-content-article-items-header-sub4">수량</div>
                <div class="member-content-article-items-header-sub5">상품금액</div>
                <div class="member-content-article-items-header-sub6">진행상황</div>
                <div class="member-content-article-items-header-sub7">상품평</div>
            </div>

            <div class="member-content-article-items-showcase">
              <div class="member-content-article-items-showcase-list">
                <div class="member-content-article-items-option1">2021.05.13</div>
                <div class="member-content-article-items-option2">202105130001</div>
                <div class="member-content-article-items-option3">티셔츠</div>
                <div class="member-content-article-items-option4">1</div>
                <div class="member-content-article-items-option5">89000</div>
                <div class="member-content-article-items-option6">진행상황</div>
                <div class="member-content-article-items-option7">상품평</div>
              </div>
            </div>

            <div class="member-content-article-items-showcase-list">
              <div class="member-content-article-items-option1">2021.05.13</div>
              <div class="member-content-article-items-option2">202105130001</div>
              <div class="member-content-article-items-option3">티셔츠</div>
              <div class="member-content-article-items-option4">1</div>
              <div class="member-content-article-items-option5">89000</div>
              <div class="member-content-article-items-option6">진행상황</div>
              <div class="member-content-article-items-option7">상품평</div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>  
   <%@ include file="../main/footer.jsp"%>
</body>
</html>
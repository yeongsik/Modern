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
  <link rel="stylesheet" href="css/member/member_order_delivery.css">
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
          <div class="member-content-article-header">주문 / 배송조회</div>
          <div class="member-content-article-procedure">
            <input type="button" value="0">
            <i class="fas fa-angle-right"></i>
            <input type="button" value="0">
            <i class="fas fa-angle-right"></i>
            <input type="button" value="0">
            <i class="fas fa-angle-right"></i>
            <input type="button" value="0">
            <i class="fas fa-angle-right"></i>
            <input type="button" value="0">
          </div>
          <div class="member-content-article-procedure-tag">
            <ul>
              <li class="member-content-article-procedure-tag-name">입금대기</li>
              <li class="member-content-article-procedure-tag-name">결제완료</li>
              <li class="member-content-article-procedure-tag-name">배송준비중</li>
              <li class="member-content-article-procedure-tag-name">배송중</li>
              <li class="member-content-article-procedure-tag-name">배송완료</li>
            </ul>
          </div>

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
    </div>
  </section>  
  <%@ include file="../main/footer.jsp"%>  
</body>
</html>
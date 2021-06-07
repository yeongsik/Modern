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
	<link rel="stylesheet" href="css/member/member_cart.css">
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
        <%@ include file="../member/member_aside.jsp" %>

        <!-- article -->
        <div class="member-content-article-container">
          <div class="member-content-article-header kor">장바구니</div>

          <div class="member-content-article-items">
            <div class="member-content-article-items-header">
                <div class="member-content-article-items-header-no kor">번호</div>
                <div class="member-content-article-items-header-check_btn"><input type="checkbox"></div>
                <div class="member-content-article-items-header-product kor">상품명(옵션)</div>
                <div class="member-content-article-items-header-price kor">판매가</div>
                <div class="member-content-article-items-header-membership_discount kor">회원 할인</div>
                <div class="member-content-article-items-header-Quantity kor">수량</div>
                <div class="member-content-article-items-header-order_price kor">주문 금액<br>(적립 예정)</div>
                <div class="member-content-article-items-header-order_state kor">주문 관리</div>
                <div class="member-content-article-items-header-delivery_fee kor">배송비/배송 형태</div>
            </div>
            <div class="member-content-article-items-showcase">
              <div class="member-content-article-items-showcase-list">
                <div class="member-content-article-items-no kor">1</div>
                <div class="member-content-article-items-check_btn"><input type="checkbox"></div>
                <div class="member-content-article-items-product kor">[brand] 뉴 스트레이트 데님 팬츠</div>
                <div class="member-content-article-items-price kor">89,000</div>
                <div class="member-content-article-items-membership_discount kor">-4,450</div>
                <div class="member-content-article-items-Quantity">
                  <button><i class="far fa-minus-square fa-2x"></i></button>
                  <input type="text" value="1" readonly="readonly">
                  <button><i class="far fa-plus-square fa-2x"></i></button>
                </div>
                <div class="member-content-article-items-order_price kor">84,550</div>
                <div class="member-content-article-items-order_state kor"><button>삭제하기</button></div>
                <div class="member-content-article-items-delivery_fee">
                  택배배송 <br>
                  <b>배송비무료</b> <br>
                </div>
              </div>
            </div>
            <div class="member-content-article-items-showcase-list">
              <div class="member-content-article-items-no kor">2</div>
              <div class="member-content-article-items-check_btn"><input type="checkbox"></div>
              <div class="member-content-article-items-product kor">[brand] 솔리드 옥스퍼드 셔츠</div>
              <div class="member-content-article-items-price kor">44,000</div>
              <div class="member-content-article-items-membership_discount kor">-1,320</div>
              <div class="member-content-article-items-Quantity">
                <button><i class="far fa-minus-square fa-2x"></i></button>
                <input type="text" value="1" readonly="readonly">
                <button><i class="far fa-plus-square fa-2x"></i></button>
              </div>
              <div class="member-content-article-items-order_price kor">42,680</div>
              <div class="member-content-article-items-order_state kor"><button>삭제하기</button></div>
              <div class="member-content-article-items-delivery_fee kor">
                택배배송 <br>
                <b>배송비무료</b> <br>
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
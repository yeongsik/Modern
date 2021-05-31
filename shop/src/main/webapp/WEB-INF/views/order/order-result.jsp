<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문결과</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/order.css">
    <link rel="stylesheet" type="text/css" href="css/order-result.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">

</head>
<body>
	<%@ include file="../main/header.jsp" %>
    <section class="container kor">
        <div class="main-content-wrapper kor">
			<div class="top-content-wrapper">
				<p class="top-content-title" style="">주문결과</p>
				<p class="top-content-dscr">이용해 주셔서 감사합니다.</p>
				<p class="top-content-dscr">주문이 정상적으로 완료되었습니다.</p>
				<p class="top-content-ordernum">주문번호 <a href="#">20210101-00001</a></p>
			</div>
           <div class="left-content">
               <!-- 배송정보 -->
               <div class="left-content-wrapper" style="border: 0;">
                   <div class="content-table-title">
                       <p class="content-title">배송정보</p>
                   </div>


	                   <div class="content-table">
	                       <div class="inf-label-result">
	                           수령인
	                       </div>
	                       <div class="inf-result">
	                       		홍길동
	                       </div>
	                   </div>
	                   <div class="content-table">
	                       <div class="inf-label-result">
	                           배송지
	                       </div>
	                       <div class="inf-result">
	                           04104 서울 마포구 신촌로 176 3층 302호
	                       </div>
	                   </div>
	                   <div class="content-table">
	                       <div class="inf-label-result">
	                           연락처1
	                       </div>
	                       <div class="inf-result">
	                           010-1234-5678
	                       </div>
	                   </div>
	                   <div class="content-table">
	                       <div class="inf-label-result">
	                            연락처2
	                       </div>
	                       <div class="inf-result">

	                       </div>
	                   </div>
	                   <div class="content-table">
	                       <div class="inf-label-result">
								배송메모
	                       </div>
	                       <div class="inf-result">
	                           무인택배함에 보관바랍니다.
	                       </div>
	                   </div>
                   </div>
                   
             

               <!-- 쿠폰/포인트 -->
               <div class="left-content-wrapper">
                    <div class="content-table-title">
                        <p class="content-title">쿠폰 / 포인트</p>
                    </div>
                    <div class="content-table">
                        <div class="inf-label-result">
                            쿠폰
                        </div>
                        <div class="inf-result">
                            사용 안함
                        </div>
                    </div>
                    <div class="content-table">
                        <div class="inf-label-result">
                            포인트
                        </div>
                        <div class="inf-result">
                            0P
                        </div>
                    </div>

               </div>

               <!-- 결제방법 -->
               <div class="left-content-wrapper">
                   <div class="content-table-title">
                       <p class="content-title">결제 방법</p>
                   </div>
                   <div class="content-table">
                        <div class="inf-label-result">
                            신용카드
                        </div>
                        <div class="inf-result">
                            86,500원 (신한카드 / 일시불)
                        </div>
                    </div>
               </div>
           </div>

           <div class="right-result-content">
                <!-- 주문상품 정보 -->
                <div class="right-content-wrapper" style="border: 0;">
                    <div class="content-table-title">
                        <p class="content-title">주문상품 정보</p>
                    </div>
                    <div class="product-list">
                        <div class="product-inf-table">
                            <div class="product-inf-tr">
                                <a href="#">
                                    <div class="product">
                                        <div class="product-img">
                                            <img src="image/Tydi crop jeans.jpg" alt="">
                                        </div>
                                        <div class="product-inf">
                                            <p class="product-name eng">Tydi crop jeans 3</p>
                                            <p class="product-option">수량 1개 / 사이즈 M</p>
                                            <p class="product-price">28,000원</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="product-inf-table">
                            <div class="product-inf-tr">
                                <a href="#">
                                    <div class="product">
                                        <div class="product-img">
                                            <img src="image/Tydi crop jeans.jpg" alt="">
                                        </div>
                                        <div class="product-inf">
                                            <p class="product-name eng">Tydi crop jeans 3</p>
                                            <p class="product-option">수량 1개 / 사이즈 M</p>
                                            <p class="product-price">28,000원</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="product-inf-table">
                            <div class="product-inf-tr">
                                <a href="#">
                                    <div class="product">
                                        <div class="product-img">
                                            <img src="image/Tydi crop jeans.jpg" alt="">
                                        </div>
                                        <div class="product-inf">
                                            <p class="product-name eng">Tydi crop jeans 3</p>
                                            <p class="product-option">수량 1개 / 사이즈 M</p>
                                            <p class="product-price">28,000원</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 금액 안내 -->
                <div class="right-content-block" style="padding: 0;">
                    <div class="content-table">
                        <div class="price-label">
                            총 상품금액
                        </div>
                        <div class="price-input">
                            <div class="price-box">
                               84,000원
                            </div>
                        </div>
                    </div>
                    <div class="content-table">
                        <div class="price-label">
                            쿠폰사용
                        </div>
                        <div class="price-input">
                            <div class="price-box">
                               - 0원
                            </div>
                        </div>
                    </div>
                    <div class="content-table">
                        <div class="price-label">
                            포인트사용
                        </div>
                        <div class="price-input">
                            <div class="price-box">
                               - 0원
                            </div>
                        </div>
                    </div>
                    <div class="content-table">
                        <div class="price-label">
                            배송비
                        </div>
                        <div class="price-input">
                            <div class="price-box">
                               + 2,500원
                            </div>
                        </div>
                    </div>
                    <div class="content-table">
                        <div class="totalprice-label">
                            총 결제금액
                        </div>
                        <div class="totalinf-input">
                            <div class="totalprice-box">
                               86,500원
                            </div>
                        </div>
                    </div>
                </div>
           </div>
           
			<div class="bottom-content-wrapper">
				<button type="button" class="result-out-btn" onclick="location.href='./main.shop'">홈으로 이동</button>
			</div>
         </div>
    </section>
    <%@ include file="../main/footer.jsp" %>
</body>
</html>
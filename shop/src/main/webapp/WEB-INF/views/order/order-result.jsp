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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/stickyfilljs@2.1.0/dist/stickyfill.min.js"></script>
	<script type="text/javascript" src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="js/order.js"></script>

</head>
<body>
	<%@ include file="header.jsp" %>
    <section class="container kor">
        <div class="main-content-wrapper kor">
        	<p>이용해 주셔서 감사합니다.</p>
        	<p>주문이 정상적으로 완료되었습니다.</p>
        	<p>주문번호 <span>20210101-00001</span></p>
           <div class="left-content">
               <!-- 배송정보 -->
               <div class="left-content-wrapper">
                   <div class="content-table-title">
                       <p class="content-title">배송정보</p>
                   </div>


	                   <div class="content-table">
	                       <div class="inf-label">
	                           수령인
	                       </div>
	                       <div class="inf-input">
	                       		홍길동
	                       </div>
	                   </div>
	                   <div class="content-table">
	                       <div class="inf-label">
	                           배송지
	                       </div>
	                       <div class="inf-input">
	                           04104
	                       </div>
	                   </div>
	                   <div class="content-table">
	                       <div class="inf-label">
	                           
	                       </div>
	                       <div class="inf-input">
	                           서울 마포구 신촌로 176 3층 302호
	                       </div>
	                   </div>
	                   <div class="content-table">
	                       <div class="inf-label">
	                           연락처1
	                       </div>
	                       <div class="inf-input">
	                           010-1234-5678
	                       </div>
	                   </div>
	                   <div class="content-table">
	                       <div class="inf-label">
	                            연락처2
	                       </div>
	                       <div class="inf-input">

	                       </div>
	                   </div>
	                   <div class="content-table">
	                       <div class="inf-label">
								배송메모
	                       </div>
	                       <div class="inf-input">
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
                        <div class="inf-label">
                            쿠폰
                        </div>
                        <div class="inf-input">
                            사용 안함
                        </div>
                    </div>
                    <div class="content-table">
                        <div class="inf-label">
                            포인트
                        </div>
                        <div class="inf-input">
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
                        <div class="inf-label">
                            신용카드
                        </div>
                        <div class="inf-input">
                            86,500원 (신한카드 / 일시불)
                        </div>
                    </div>
               </div>
           </div>

           <div class="right-content">
                <!-- 주문상품 정보 -->
                <div class="right-content-wrapper">
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
                <div class="right-content-block">
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
         </div>
    </section>
    <%@ include file="footer.jsp" %>
</body>
</html>
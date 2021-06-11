<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern</title>
    <link rel="stylesheet" type="text/css" href="./css/main.css">
    <link rel="stylesheet" type="text/css" href="./css/order.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/78e568182c.js" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/stickyfilljs@2.1.0/dist/stickyfill.min.js"></script>
	<script type="text/javascript" src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script type="text/javascript">
	/* 아임포트 결제 API */
		var IMP = window.IMP;
			IMP.init('imp45220237');

		function pay() {
			IMP.request_pay({
			    pg : 'html5_inicis',
			    pay_method : 'vbank',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : '주문명:결제테스트',
			    amount : 14000,
			    buyer_email : 'iamport@siot.do',
			    buyer_name : '',
			    buyer_tel : '010-1234-5678',
			    buyer_addr : '서울특별시 강남구 삼성동',
			    buyer_postcode : '123-456'
			}, function(rsp) {
			    if ( rsp.success ) {
			        var msg = '결제가 완료되었습니다.';
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			        location.replace("./order-result.shop");
			    } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
			    }
	
			    alert(msg);
			});
		};
	</script>
    <script src="./js/order/order.js"></script>

</head>
<body>
	<%@ include file="/WEB-INF/views/main/header.jsp"%>
    <section class="container kor">
	    <!-- <form method="POST"  action="order-result.shop"> -->
	        <div class="main-content-wrapper kor">
	
	           <div class="left-content">
	               <!-- 배송정보 -->
	               <div class="left-content-wrapper">
	               <%-- <input type="text" value="${order.product_name}"/> --%>
	                   <div class="content-table-title">
	                       <p class="content-title">배송정보</p>
	                       <p class="content-dscr">
	                           <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="red" class="bi bi-asterisk" viewBox="0 0 16 16"><path d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z"/></svg>
	                           표시는 필수 입력 항목
	                       </p>
	                   </div>
	                   <div class="content-table">
	                   		<div class="select-btn">
	                   			<button type="button" class="tab1 tab11 kor" id="tab1">기존 배송지</button>
	                   		</div>
	                   		<div class="select-btn">
	                   			<button type="button" class="tab2 tab22 kor" id="tab2">신규 배송지</button>
	                   		</div>
	                   		<div class="right-btn"></div>
	                   </div>
	                   <div class="addressInf1 select">
		                   <div class="content-table">
		                       <div class="inf-label">
		                           수령인
		                           <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="red" class="bi bi-asterisk" viewBox="0 0 16 16"><path d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z"/></svg>
		                       </div>
		                       <div class="inf-input">
		                           <div class="input-box">
		                              <input type="text" class="input-text" value="${order.receiver_name}">
		                           </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		                           배송지
		                           <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="red" class="bi bi-asterisk" viewBox="0 0 16 16"><path d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z"/></svg>
		                       </div>
		                       <div class="inf-input">
		                           <div class="input-box-zip" style="border: 0">
		                              <input type="text" class="input-zip" id="postZone" value="${order.receiver_post}" readonly>
		                              <button type="button" class="zip-btn" onclick="openDaumPostcode()">우편번호 검색</button>
		                           </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		                           
		                       </div>
		                       <div class="inf-input">
		                           <div class="input-box">
		                              <input type="text" class="input-text" id="address" value="${order.receiver_addr1 }" readonly>
		                           </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		                           
		                       </div>
		                       <div class="inf-input">
		                          <div class="input-box">
		                              <input type="text" class="input-text" id="detailAddress" placeholder="상세주소 입력" value="3층 302호">
		                          </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		                           연락처1
		                           <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="red" class="bi bi-asterisk" viewBox="0 0 16 16"><path d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z"/></svg>
		                       </div>
		                       <div class="inf-input">
		                          <div class="input-box">
		                              <input type="text" class="input-text" id="detailAddress" value="01012345678">
		                          </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		                            연락처2
		                       </div>
		                       <div class="inf-input">
		                          <div class="input-box">
		                              <input type="text" class="input-text" id="detailAddress" value="">
		                          </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		
		                       </div>
		                       <div class="inf-input">
		                           <div class="input-box" id="memoGroup">
		                               <select name="" id="memoSelect" class="memo-select">
		                                   <option value="1" selected>배송 요청사항을 선택해주세요.</option>
		                                   <option value="2">부재시 연락바랍니다.</option>
		                                   <option value="3">경비실에 보관바랍니다.</option>
		                                   <option value="4">문앞에 보관바랍니다.</option>
		                                   <option value="5">무인택배함에 보관바랍니다.</option>
		                                   <option value="6">직접입력</option>
		                               </select>
		                           </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                   		<div class="inf-label">
		                   		</div>
		                   		<div class="inf-input" style="padding-top: 0;">
		                           <div class="input-box-memo" id="inputHidden">
		                               <textarea name="" id="" class="input-textarea kor" placeholder="배송메모를 입력해주세요.(최대 50자)" maxlength="50"></textarea>
		                           </div>
		                        </div>
		                   </div>
	                   </div>
	                   <div class="addressInf2" style="display: none;">
	                   		<div class="content-table">
		                       <div class="inf-label">
		                           수령인
		                           <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="red" class="bi bi-asterisk" viewBox="0 0 16 16"><path d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z"/></svg>
		                       </div>
		                       <div class="inf-input">
		                           <div class="input-box">
		                              <input type="text" class="input-text">
		                           </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		                           배송지
		                           <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="red" class="bi bi-asterisk" viewBox="0 0 16 16"><path d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z"/></svg>
		                       </div>
		                       <div class="inf-input">
		                           <div class="input-box-zip" style="border: 0">
		                              <input type="text" class="input-zip" id="postZone2" readonly>
		                              <button type="button" class="zip-btn" onclick="openDaumPostcodeNew()">우편번호 검색</button>
		                           </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		                           
		                       </div>
		                       <div class="inf-input">
		                           <div class="input-box">
		                              <input type="text" class="input-text" id="address2" readonly>
		                           </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		                           
		                       </div>
		                       <div class="inf-input">
		                          <div class="input-box">
		                              <input type="text" class="input-text" id="detailAddress2" placeholder="상세주소 입력">
		                          </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		                           연락처1
		                           <svg xmlns="http://www.w3.org/2000/svg" width="8" height="8" fill="red" class="bi bi-asterisk" viewBox="0 0 16 16"><path d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z"/></svg>
		                       </div>
		                       <div class="inf-input-tel">
		                           <div class="input-box-tel">
		                               <input type="text" class="input-tel" maxlength="4">
		                           </div>
		                               <span>-</span>
		                           <div class="input-box-tel">
		                               <input type="text" class="input-tel" maxlength="4">
		                           </div>
		                               <span>-</span>
		                           <div class="input-box-tel">
		                               <input type="text" class="input-tel" maxlength="4">
		                           </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		                            연락처2
		                       </div>
		                       <div class="inf-input-tel">
		                           <div class="input-box-tel">
		                               <input type="text" class="input-tel" maxlength="4">
		                           </div>
		                               <span>-</span>
		                           <div class="input-box-tel">
		                               <input type="text" class="input-tel" maxlength="4">
		                           </div>
		                               <span>-</span>
		                           <div class="input-box-tel">
		                               <input type="text" class="input-tel" maxlength="4">
		                           </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                       <div class="inf-label">
		
		                       </div>
		                       <div class="inf-input">
		                           <div class="input-box" id="memoGroup2">
		                               <select name="" id="memoSelect2" class="memo-select">
		                                   <option value="1" selected>배송 요청사항을 선택해주세요.</option>
		                                   <option value="2">부재시 연락바랍니다.</option>
		                                   <option value="3">경비실에 보관바랍니다.</option>
		                                   <option value="4">문앞에 보관바랍니다.</option>
		                                   <option value="5">무인택배함에 보관바랍니다.</option>
		                                   <option value="6">직접입력</option>
		                               </select>
		                           </div>
		                       </div>
		                   </div>
		                   <div class="content-table">
		                   		<div class="inf-label">
		                   		</div>
		                   		<div class="inf-input" style="padding-top: 0;">
		                           <div class="input-box-memo" id="inputHidden2">
		                               <textarea name="" id="" class="input-textarea kor" placeholder="배송메모를 입력해주세요.(최대 50자)" maxlength="50"></textarea>
		                           </div>
		                        </div>
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
	                            <div class="input-box">
	                                <select name="" id="" class="memo-select">
	                                    <option value="" selected>사용할 쿠폰을 선택해주세요.</option>
	                                    <option value="">가입환영 10% 쿠폰</option>
	                                </select>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="content-table">
	                        <div class="inf-label">
	                            포인트
	                        </div>
	                        <div class="inf-input">
	                            <div class="input-box-point">
	                               <input type="text" class="input-point" placeholder="0">
	                               <button class="point-btn" type="button">모두 사용</button>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="content-table">
	                        <div class="inf-label">
	
	                        </div>
	                        <div class="inf-input">
	                            <div class="usable-point">보유 포인트 <span style="font-weight: 700; font-size: 0.9rem; padding-left: 4px;"> 0p</span></div>
	                        </div>
	                    </div>
	               </div>
	
	               <!-- 결제방법 -->
	               <div class="left-content-wrapper">
	                   <div class="content-table-title">
	                       <p class="content-title">결제 방법</p>
	                   </div>	
	                   <div class="content-table">
							<div class="payment-btn">
								<input class="payment-select" type="radio" name="payment" id="card" value="card" />
								<label for="card" class="card">신용카드</label>
							</div>
							<div class="payment-btn">
								<input class="payment-select" type="radio" name="payment" id="trans" value="trans" />
								<label for="trans" class="trans">실시간계좌이체</label>
							</div>
							<div class="payment-btn">
								<input class="payment-select" type="radio" name="payment" id="vbank" value="vbank" />
								<label for="vbank" class="vbank">가상계좌</label>
							</div>
							<div class="payment-btn">
								<input class="payment-select" type="radio" name="payment" id="kakaopay" value="kakaopay" />
								<label for="kakaopay" class="kakaopay">카카오페이</label>
							</div>
	                   </div>
	                   <div class="content-table">
							<div class="payment-btn">
								<input class="payment-select" type="radio" name="payment" id="phone" value="phone" />
								<label for="phone" class="phone">휴대폰결제</label>
							</div>
							<div class="payment-btn">
								<input class="payment-select" type="radio" name="payment" id="naverpay" value="naverpay" />
								<label for="naverpay" class="naverpay">네이버페이</label>
							</div>
							<div class="payment-btn">
								<input class="payment-select" type="radio" name="payment" id="samsung" value="samsung" />
								<label for="samsung" class="samsung">삼성페이</label>
							</div>
							<div class="payment-btn">
								<input class="payment-select" type="radio" name="payment" id="payco" value="payco" />
								<label for="payco" class="payco">페이코</label>
							</div>
	                   </div>
	                   <div class="content-table">
	                   		<div class="payment-dscr">
	                   			<div class="dscr-line">
	                  				<span class="dscr-ico">헤택</span>
	                  				<a href="#">제휴 카드사 2% 청구 할인
		              					<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 14 14">
									 	 <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z"/>
										</svg>
									</a>
	                   			</div>
	                   			<div class="dscr-line">
	                  				<span class="dscr-ico">안내</span>
	                  				<a href="#">교환 및 반품 절차 안내
		              					<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 14 14">
									 	 <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z"/>
										</svg>
									</a>
	                   			</div>
	                   			<div class="dscr-line">
	                  				<span class="dscr-ico">할부</span>
	                  				<a href="#">신용카드 무이자 할부 안내
		              					<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 14 14">
									 	 <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z"/>
										</svg>
									</a>
	                   			</div>
	                   			<div class="dscr-line">
	                  				<span class="dscr-ico">안내</span>
	                  				<a href="#">품절 취소시 환불 안내
		              					<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 14 14">
									 	 <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z"/>
										</svg>
									</a>
	                   			</div>
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
	
	                <!-- 서비스 동의 -->
	                <div class="right-content-block" style="padding-bottom: 0; font-size: var(--font-size-h6);">
	                    <div class="agree-check">
	                        <input type="checkbox" name="" id="checkbox">
	                        <label for="checkbox">상품 및 구매조건을 확인하였으며, 결제대행 서비스에 동의합니다.(필수)</label>
	                    </div>
	                    <div>
	                        <ul style="color: var(--color-grey);">
	                            <li style="padding: 10px 0 0 25px;">개인정보 처리방침 <a href="#" style="color: var(--color-grey); text-decoration: underline;">보기</a></li>
	                            <li style="padding: 10px 0 0 25px;">결제대행 서비스 이용약관 <a href="#" style="color: var(--color-grey); text-decoration: underline;">보기</a></li>
	                        </ul>
	                    </div>
	                </div>
	
	                <!-- 결제 버튼 -->
	                <div class="right-content-block" style="padding-bottom: 0; border-top: 0;">
	                    <button type="button" class="checkout-btn" onclick="pay()">결제하기</button>
	                </div>
	           </div>
	         </div>
        <!--  </form> -->
    </section>
    <%@ include file="/WEB-INF/views/main/footer.jsp"%>
</body>
</html>
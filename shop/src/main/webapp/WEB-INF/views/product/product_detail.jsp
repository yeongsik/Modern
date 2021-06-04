<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width , initial-scale=1.0">
    <title>Modern</title>
    <link rel="stylesheet" type="text/css" href="css/product/product_detail.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>    
    <script src="js/product/product_detail.js"></script>
    <script 
    src="https://kit.fontawesome.com/78e568182c.js" crossorigin="anonymous">
    </script>
</head>
<body>
    <%@ include file="/WEB-INF/views/main/header.jsp"%>
    <div class="container">
        <section class="main-content-wrapper">
             <form method="POST" action ="./order.shop">
                <div class="product-detail-first-wrapper">
                    <div class="product-detail-first-product_img">
                        <img class="product-detail-product_img" src="product_images/${product.product_thumbnail}.png">
                    </div>
                    <div class="product-detail-first-product_subject">
                        <div class="product-detail-product-name-wrapper">
                            <div class="product-detail-product-name eng">
                                ${product.product_name}
                            </div>
                            <div class="product-detail-product-heart">
                                <i class="fas fa-heart product-heart"></i>
                            </div>
                        </div>
                        <div class="product-detail-product-price kor">
                            &#8361; ${product.product_price}
                        </div>
                        <div class="product-detail-product_description kor">
                            상품 설명
                        </div>
                        <div class="product_description-p eng">
                            Material : Cotton ( 100% )
                        </div>
                        <div class="product_description-p kor">
                            *실측방법에 따라 오차 1~2cm 정도 발생할 수 있으니 참고 부탁드립니다.
                        </div>
                        <div class="product_description-p kor">
                            *모델 178cm / 76kg / L 사이즈 착용하였습니다.
                        </div>
                        <div class="product-detail-point kor">
                            적립금 : ${buyingPoint}P
                        </div>
                        <div class="product-detail-product_description kor">
                        배송 정보
                            <div class="delivery-notice kor">100,000원 이상 구매시 무료배송 ( 미만시 배송비 3000원 발생 )
                                <br><br>제주도를 포함한 도서/산간지역은 추가배송비 3,000원
                            </div>
                        </div>
                        <div class="product-detail-size-choice">
                            <select class="product_detail-size-select eng" id="product_select">
                                <option>SIZE</option>
                                <option id="product_size_s">S</option>
                                <option id="product_size_m">M</option>
                                <option id="product_size_l">L</option>
                            </select>
                        </div>
                        <div class="product-detail-count-wrapper" id="product-count">
                        </div>
                        <div class="product-detail-order-wrapper">
                            <input type="button" class="product-detail-btn cart-btn eng" value="Cart">
                            <input type="submit" class="product-detail-btn order-btn eng" value="Order">
                        </div>
                    </div>
                </div>
                <div class="product-detail-description-img-wrapper">
                    <div class="product-detail-description-tab-wrapper">
                        <ul class="description-tabs">
                            <li class="product-description-tab-link current eng" data-tab="tab-1">PRODUCT_DETAIL</li>
                            <li class="product-description-tab-link  eng" data-tab="tab-2">SHOPPING INFO.</li>
                            <li class="product-description-tab-link  eng" data-tab="tab-3">REVIEW</li>
                            <li class="product-description-tab-link  eng" data-tab="tab-4">Q&A</li>
                        </ul>
                    </div>
                    <div class="description-section-wrapper">
                        <div class="product-detail-img-wrapper tab-content current" id="tab-1">
                            <img class="product-detail-img" src="product_images/${product.product_description}.jpg">
                        </div>
                        <div class="product-detail-img-wrapper shopping-info tab-content" id="tab-2">
                            <div class="product-description-notice-wrapper">
                                <div class="notice-subject kor">
                                    상품결제정보
                                </div>
                                <div class="detail-content detail-notice-content1 kor">
                                    고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다. 확인과정에서 도난 카드의 사용이나 타인 명의의 주문 등 정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다.
                                </div>
                                <div class="detail-content detail-notice-content2 kor">
                                    무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면 됩니다.
                                    주문 시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로 입금하셔야 하며 입금되지 않은 주문은 자동취소 됩니다.
                                </div>
                                <div class="notice-subject kor">
                                    배송정보
                                </div>
                                <span class="detail-content kor">
                                    배송 방법 : 택배
                                </span>
                                <span class="detail-content kor">
                                    배송 지역 : 전국
                                </span>
                                <span class="detail-content kor">
                                    배송 비용 : 4000
                                </span>
                                <span class="detail-content kor">
                                    배송 기간 : 3일 ~ 7일
                                </span>
                                <span class="detail-content kor">
                                    배송 안내 : 고객님께서 주문하신 상품은 입금 확인 후 배송해 드립니다. 다만, 상품 종류에 따라서 상품의 배송이 다소 지연될 수 있습니다
                                </span>
                            </div>
                        </div>
                        <div class="product-detail-img-wrapper review tab-content" id="tab-3">
                            탭3
                        </div>
                        <div class="product-detail-img-wrapper qa tab-content" id="tab-4">
                            탭4
                        </div>
                    </div>
                </div>
            </form>
        </section>
    </div>
    <%@ include file="/WEB-INF/views/main/footer.jsp"%>
</body>
</html>


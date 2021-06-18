<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<p class="product-name eng">${product.product_name}</p>
<p class="product-option">수량 : ${orderDetail.purchase_number } / 사이즈 : ${orderDetail.choose_size}</p>
<p class="product-price coupon-action-price">가격 : &#8361; <fmt:formatNumber type="number" maxFractionDigits="3"  value="${product.product_price*orderDetail.purchase_number}" /></p>
<c:if test="${coupon.coupon_discount >100 }">
<p class="product-price">할인된 가격 : &#8361; <fmt:formatNumber type="number" maxFractionDigits="3"  value="${product.product_price*orderDetail.purchase_number-coupon.coupon_discount}" /></p>
</c:if>
<c:if test="${coupon.coupon_discount <100 }">
<p class="product-price">할인된 가격 : &#8361; <fmt:formatNumber type="number" maxFractionDigits="3"  value="${product.product_price*orderDetail.purchase_number-coupon.coupon_discount*(product.product_price*orderDetail.purchase_number)}" /></p>
</c:if>
<button class="coupon_btn kor" onClick="orderSelectCoupon(${orderDetail.order_detail_pk})">쿠폰 조회 / 적용</button>
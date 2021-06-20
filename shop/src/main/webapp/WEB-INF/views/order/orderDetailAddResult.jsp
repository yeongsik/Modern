<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="orderDetail-content-wrapper" id="${orderDetail.order_detail_pk}">
	<input type="hidden" id="orderDetail_pk" name="order_detail_pk" value="${orderDetail.order_detail_pk}">
	<div class="order-Detail-content detail-subject kor">${orderProduct.product_name }</div>
	<div class="order-Detail-content detail-choose-size kor">${orderDetail.choose_size}</div>
	<div class="order-Detail-content detail-purchase-number kor" id="order_purchase_content${orderDetail.order_detail_pk}">
		<div class="order_Detail-content detail-product-price kor">
		<input type="hidden" class="total_price" value="${orderProduct.product_price*orderDetail.purchase_number}">
			&#8361; <fmt:formatNumber type="number" maxFractionDigits="3"  value="${orderProduct.product_price*orderDetail.purchase_number}" />
		</div>
		<i class="far fa-minus-square purchase-content" onClick="minusPurchaseNumber(${orderDetail.purchase_number} ,${orderDetail.order_detail_pk})"></i>
		<div class="number kor purchase-content kor" id="order_purchase_number">${orderDetail.purchase_number }</div>
		<i class="far fa-plus-square purchase-content" onClick ="plusPurchaseNumber(${orderDetail.purchase_number} ,${orderDetail.order_detail_pk})"></i>
	</div>
	<div class="order-Detail-content detail-exit">
		<i class="far fa-times-circle" onClick="removeOrderDetail(${orderDetail.order_detail_pk},'${orderDetail.choose_size}')"></i>
	</div>
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<i class="far fa-minus-square purchase-content" onClick="minusPurchaseNumber(${orderDetail.purchase_number} ,${orderDetail.order_detail_pk})"></i>
<div class="number kor purchase-content kor" id="order_purchase_number">${orderDetail.purchase_number }</div>
<i class="far fa-plus-square purchase-content" onClick ="plusPurchaseNumber(${orderDetail.purchase_number} ,${orderDetail.order_detail_pk})"></i>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="js/order/orderDetailAdd.js"></script>
<div class="orderDetail-content-wrapper">
	<div class="order-Detail-content eng">${orderProduct.product_name }</div>
	<div class="order-Detail-content eng">${orderDetail.choose_size}</div>
	<div class="order-Detail-content kor">수량:${orderDetail.purchase_number}</div>
</div>

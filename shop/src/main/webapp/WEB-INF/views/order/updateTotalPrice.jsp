<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="totalPrice" value="0" />
<div class="price-box">
	<c:forEach var="orderDetail" items="${orderList}" varStatus="status">
		<c:set var="totalPrice" value="${totalPrice+orderDetail.purchase_number * productList[status.index].product_price }"/>
	</c:forEach>
	 &#8361; <fmt:formatNumber type="number" maxFractionDigits="3"  value="${totalPrice}" />
</div>



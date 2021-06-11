<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="js/product/listadd.js"></script>
<c:forEach items ="${productlist }" var ="product">
	<input type="hidden" id="currentPage" value="${currentPage}">
	<div class="product-list-detail-wrapper" id="product_id" onClick="location.href='product_detail.shop?product_id=${product.product_id}'">
	 <div class="product-list-img-wrapper">
	     <img class="product-list-img" src="product_images/${product.product_thumbnail}.png">
	 </div>
	 <div class="product-detail-content" id="list-detail-desc1">
	     <span class="product-detail-subject product-detail eng">
	         ${product.product_name}
	     </span>
	     <span class="product-detail-price product-detail eng">
	         &#8361; <fmt:formatNumber type="number" maxFractionDigits="3"  value="${product.product_price}" />
	        </span>
	        <div class="product-detail-heart product-detail eng">
	            <i class="far fa-heart like-product"></i>
	        </div>
	    </div>
	</div>
</c:forEach>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<script src="js/header.js"></script>
	<div class="header-container">
	    <header class="header-wrapper">
	        <div class="header-sitename">
	            <div class="sitename eng"><a href="main.shop">Modern</a></div>
	        </div>
	        <div class="header-category-nav">
	            <div class="header-category-name header-category-about eng"><a href="about.shop">ABOUT</a></div>
	            <div class="header-category-name header-category-shop eng" id="shop">SHOP</div>
	            <div class="header-category-name header-category-notice eng"><a href="notice.shop">NOTICE</a></div>
	        </div>
	        <div class="header-category-detail-nav" id="header_nav">
	            <div class="header-category-detail-nav-name header-category-detail-nav-top eng"><a href="productlist.shop?category_id=top_knit">Top</a></div>
	            <div class="header-category-detail-nav-name header-category-detail-nav-bottom eng"><a href="productlist.shop?category_id=bottom_jean">Bottom</a></div>
	            <div class="header-category-detail-nav-name header-category-detail-nav-outer eng"><a href="productlist.shop?category_id=outer_jacket">Outer</a></div>
	            <div class="header-category-detail-nav-name header-category-detail-nav-acc eng"><a href="productlist.shop?category_id=acc_shoes">Acc</a></div>
	        </div>
	        <div class="header-member-section">
			<c:if test="${sessionScope.member_id == null }">
	        	<div class="header-member-section-content eng">
	        		<a class="eng" href="login.shop">LogIn</a>
	        	</div>
	       	</c:if> 
	       	<c:if test="${sessionScope.member_id != null }">
	            <div class="header-member-section-content header-member-section-heart">
	                <a href="member_interest.shop"><i class="fas fa-heart"></i></a>
	            </div>
	            <div class="header-member-section-content header-member-section-cart">
	                <a href="member_cart.shop"><i class="fas fa-shopping-cart"></i></a>
	            </div>
	            <div class="header-member-section-content header-member-section-member">
	                <a href="member_main.shop"><i class="fas fa-user"></i></a>
	            </div>
	       	</c:if>
	        </div>
	    </header>
	</div>

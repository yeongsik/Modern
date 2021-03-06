<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width , initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="preconnect" href="https://fonts.gstatic.com"> 
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>    
    <script src="js/header.js"></script>
    <script 
    src="https://kit.fontawesome.com/78e568182c.js" crossorigin="anonymous">
    </script>
</head>
<body>
    <div class="header-container">
        <header class="header-wrapper">
            <div class="header-sitename">
                <div class="sitename eng">Man</div>
            </div>
            <div class="header-category-nav">
                <div class="header-category-name header-category-about eng"><a href="about.shop">ABOUT</a></div>
                <div class="header-category-name header-category-shop eng" id="shop">SHOP</div>
                <div class="header-category-name header-category-notice eng"><a href="notice.shop">NOTICE</a></div>
            </div>
            <div class="header-category-detail-nav" id="header_nav">
                <div class="header-category-detail-nav-name header-category-detail-nav-top eng"><a href="">Top</a></div>
                <div class="header-category-detail-nav-name header-category-detail-nav-bottom eng"><a href="">Bottom</a></div>
                <div class="header-category-detail-nav-name header-category-detail-nav-outer eng"><a href="">Outer</a></div>
                <div class="header-category-detail-nav-name header-category-detail-nav-acc eng"><a href="">Acc</a></div>
            </div>
            <div class="header-member-section">
       			<c:if test="${sessionScope.id == null }">
	            	<div class="header-member-section-content eng">
	            		<a class="eng" href="login.shop">LogIn</a>
	            	</div>
            	</c:if>
            	<c:if test="${sessionScope.id != null }">
	                <div class="header-member-section-content header-member-section-heart">
	                    <a href="heart.shop"><i class="fas fa-heart"></i></a>
	                </div>
	                <div class="header-member-section-content header-member-section-cart">
	                    <a href="cart.shop"><i class="fas fa-shopping-cart"></i></a>
	                </div>
	                <div class="header-member-section-content header-member-section-member">
	                    <a href="mypage.shop"><i class="fas fa-user"></i></a>
	                </div>
            	</c:if>
            </div>
        </header>
    </div>
</body>
</html>
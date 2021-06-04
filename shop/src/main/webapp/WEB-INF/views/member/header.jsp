<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width , initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/header.js"></script>
<script src="https://kit.fontawesome.com/78e568182c.js"
	crossorigin="anonymous">
    </script>
</head>
<body>
	<div class="header-container">
		<header class="header-wrapper">
			<div class="header-sitename">
				<div class="sitename eng">
					<a href="main.shop">Modern</a>
				</div>
			</div>
			<div class="header-category-nav">
				<div class="header-category-name header-category-about eng">
					<a href="about.shop">ABOUT</a>
				</div>
				<div class="header-category-name header-category-shop eng" id="shop">SHOP</div>
				<div class="header-category-name header-category-notice eng">
					<a href="notice.shop">NOTICE</a>
				</div>
			</div>
			<div class="header-category-detail-nav" id="header_nav">
				<div
					class="header-category-detail-nav-name header-category-detail-nav-top eng">
					<a href="productlist.shop?category=top_knit">Top</a>
				</div>
				<div
					class="header-category-detail-nav-name header-category-detail-nav-bottom eng">
					<a href="productlist.shop?category=bottom_jean">Bottom</a>
				</div>
				<div
					class="header-category-detail-nav-name header-category-detail-nav-outer eng">
					<a href="productlist.shop?category=outer_jacket">Outer</a>
				</div>
				<div
					class="header-category-detail-nav-name header-category-detail-nav-acc eng">
					<a href="productlist.shop?category=acc_shoes">Acc</a>
				</div>
			</div>
			<div class="header-member-section">
				<c:if test="${sessionScope.member_id == null }">
					<div class="header-member-section-content eng">
						<a class="eng" href="login.shop">LogIn</a>
					</div>
				</c:if>
				<c:if test="${sessionScope.member_id != null }">
					<div class="header-member-section-content header-member-section-cart">
						<a href="member_cart.shop"><i class="fas fa-shopping-cart"></i></a>
					</div>
					<div class="header-member-section-content header-member-section-member header-member">
						<a href="member_main.shop"><i class="fas fa-user"></i></a>
					</div>
<!-- 					<div class="header-member-section-content header-member-section-heart">
							<a href="member_interest.shop">Heart</a>
						</div> -->
					<ul class="header-login-dropdown">
						<li class="dropdown-nickname"><i class="fas fa-user drop-icon"></i><br><br>${nickname}님,<br><br>환영합니다.<br><hr></li>
						
						<li class="header-member-mypage"><a href="member_main.shop">MyPage</a><br><hr></li>
<!-- 						<li class="header-member-section-content header-member-section-heart">
							<a href="member_interest.shop">Heart</a>
						</li> -->
						<li class="dropdown-logout"><a href="member_logout.shop">Logout</a></li>
					</ul>
				</c:if>
			</div>
		</header>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width , initial-scale=1.0">
    <title>상품리스트</title>
    <link rel="stylesheet" type="text/css" href="css/product/list.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>    
    <script src="js/product/list.js"></script>
    <script 
    src="https://kit.fontawesome.com/78e568182c.js" crossorigin="anonymous">
    </script>
</head>
<body>
    <%@ include file="/WEB-INF/views/main/header.jsp"%>
    <div class="container">
        <section class="main-content-wrapper">
            <div class="aside-btn-wrapper" id="aside-btn" >
                <i class="fas fa-briefcase"></i>
            </div>
            <div class="product-list-wrapper">
                <div class="product-list-aside" id="aside-list">
                    <div class="product-list-aside-wrapper">
                        <div class="product-list-aside-top">
                          	<div class="list-aside-subject list-aside-content eng">
                           			Top
                           	</div>
                            <div class="list-aside-top-t_shirts list-aside-content eng">
                                <a href="productlist.shop?category=top_tshirts">T-shirts</a>
                            </div>
                            <div class="list-aside-top-t_shirts list-aside-content eng">
                                <a href="productlist.shop?category=top_tshirts">Shirts</a>
                            </div>
                            <div class="list-aside-top-t_shirts list-aside-content eng">
                                <a href="productlist.shop?category=top_knit">Knit</a>
                            </div>
                        </div>
                        <div class="product-list-aside-bottom">
                            <div class="list-aside-subject list-aside-content eng">
                                Bottom
                            </div>
                            <div class="list-aside-bottom-jean list-aside-content eng">
                                <a href="productlist.shop?category=bottom_jean">Jean</a>
                            </div>
                            <div class="list-aside-bottom-pants list-aside-content eng">
                                <a href="productlist.shop?category=bottom_pants">Pants</a>
                            </div>
                            <div class="list-aside-bottom-shorts list-aside-content eng">
                                <a href="productlist.shop?category=bottom_shorts">Shorts</a>
                            </div>
                        </div>
                        <div class="product-list-aside-outer">
                            <div class="list-aside-subject list-aside-content eng">
                                Outer
                            </div>
                            <div class="list-aside-outer-coat list-aside-content eng">
                                <a href="productlist.shop?category=outer_coat">Coat</a>
                            </div>
                            <div class="list-aside-outer-jacket list-aside-content eng">
                                <a href="productlist.shop?category=outer_jacket">Jacket</a>
                            </div>
                        </div>
                        <div class="product-list-aside-acc">
                            <div class="list-aside-subject list-aside-content eng">
                                Acc
                            </div>
                            <div class="list-aside-acc-shoes list-aside-content eng">
                                <a href="productlist.shop?category=acc_shoes">Shoes</a>
                            </div>
                            <div class="list-aside-acc-socks list-aside-content eng">
                                <a href="productlist.shop?category=acc_socks">Socks</a>
                            </div>
                            <div class="list-aside-acc-jewelry list-aside-content eng">
                                <a href="productlist.shop?category=acc_jewelry">Jewelry</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-lately-wrapper">
                        <div class="product-lately-subject kor">
                            최근 본 상품
                        </div>
                        <div class="product-lately-content-wrapper">
                            <div class="product-lately-content-img">
                                <img class="product-lately-img" src="image/knit샘플이미지1.png">
                                <div class="product-lately-content">
                                    <div class="product-lately-content-subject eng">
                                        Topfill round knit beige
                                    </div>
                                    <div class="product-lately-content-price eng">
                                        74,000
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-list-content-wrapper">
                    <div class="product-list-content-subject eng">
                        Top
                    </div>
                    <div class="product-list-content-list eng">
                        <ul>
                            <a href=""><li class="list-nav">T-shirts</li></a>
                            <a href=""><li class="list-nav">Shirts</li></a>
                            <a href=""><li class="list-nav">Knit</li></a>
                        </ul>
                    </div>
                    <div class="product-list-content-container">
                        <div class="product-list-detail-wrapper">
                            <div class="product-list-img-wrapper">
                                <img class="product-list-img" src="image/knit샘플이미지1.png">
                            </div>
                            <div class="product-detail-content" id="list-detail-desc1">
                                <span class="product-detail-subject product-detail eng">
                                    Topfill round knit beige
                                </span>
                                <span class="product-detail-price product-detail eng">
                                    74,000
                                </span>
                                <div class="product-detail-heart product-detail eng">
                                    <i class="far fa-heart"></i>
                                </div>
                            </div>
                        </div>
                        <div class="product-list-detail-wrapper">
                            <div class="product-list-img-wrapper">
                                <img class="product-list-img" src="image/knit샘플이미지1.png">
                            </div>
                            
                                <span class="product-detail-subject">
                                    
                                </span>
                                <span class="product-detail-price">
                                    
                                </span>
                                <div class="product-detail-heart">
    
                                </div>
                            
                        </div>
                        <div class="product-list-detail-wrapper">
                            <div class="product-list-img-wrapper">
                                <img class="product-list-img" src="image/knit샘플이미지1.png">
                            </div>
                            <div class="product-detail-content">
                                <span class="product-detail-subject">
                                    
                                </span>
                                <span class="product-detail-price">
                                    
                                </span>
                                <div class="product-detail-heart">
    
                                </div>
                            </div>
                        </div>
                        <div class="product-list-detail-wrapper">
                            <div class="product-list-img-wrapper">
                                <img class="product-list-img" src="image/knit샘플이미지1.png">
                            </div>
                            <div class="product-detail-content">
                                <span class="product-detail-subject">
                                    
                                </span>
                                <span class="product-detail-price">
                                    
                                </span>
                                <div class="product-detail-heart">
    
                                </div>
                            </div>
                        </div>
                        <div class="product-list-detail-wrapper">
                            <div class="product-list-img-wrapper">
                                <img class="product-list-img" src="image/knit샘플이미지1.png">
                            </div>
                            <div class="product-detail-content">
                                <span class="product-detail-subject">
                                    
                                </span>
                                <span class="product-detail-price">
                                    
                                </span>
                                <div class="product-detail-heart">
    
                                </div>
                            </div>
                        </div>
                        <div class="product-list-detail-wrapper">
                            <div class="product-list-img-wrapper">
                                <img class="product-list-img" src="image/knit샘플이미지1.png">
                            </div>
                            <div class="product-detail-content">
                                <span class="product-detail-subject">
                                    
                                </span>
                                <span class="product-detail-price">
                                    
                                </span>
                                <div class="product-detail-heart">
    
                                </div>
                            </div>
                        </div>
                        <div class="product-list-detail-wrapper">
                            <div class="product-list-img-wrapper">
                                <img class="product-list-img" src="image/knit샘플이미지1.png">
                            </div>
                            <div class="product-detail-content">
                                <span class="product-detail-subject">
                                    
                                </span>
                                <span class="product-detail-price">
                                    
                                </span>
                                <div class="product-detail-heart">
    
                                </div>
                            </div>
                        </div>
                        <div class="product-list-detail-wrapper">
                            <div class="product-list-img-wrapper">
                                <img class="product-list-img" src="image/knit샘플이미지1.png">
                            </div>
                            <div class="product-detail-content">
                                <span class="product-detail-subject">
                                    
                                </span>
                                <span class="product-detail-price">
                                    
                                </span>
                                <div class="product-detail-heart">
    
                                </div>
                            </div>
                        </div>
                        <div class="product-list-detail-wrapper">
                            <div class="product-list-img-wrapper">
                                <img class="product-list-img" src="image/knit샘플이미지1.png">
                            </div>
                            <div class="product-detail-content">
                                <span class="product-detail-subject">
                                    
                                </span>
                                <span class="product-detail-price">
                                    
                                </span>
                                <div class="product-detail-heart">
    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <%@ include file="/WEB-INF/views/main/footer.jsp"%>
</body>
</html>


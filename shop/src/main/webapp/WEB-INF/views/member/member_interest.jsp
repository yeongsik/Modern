<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Modern</title>
	<!-- css -->
	<link rel="stylesheet" href="css/member/member_interest.css">
	<!-- js -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/mypage_interest.js"></script>
	<script src="js/main.js"></script>
	<!-- 구글 폰트 -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Raleway&display=swap">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap">
	<!-- fontawesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body>
   <%@ include file="../main/header.jsp"%>  
  <section class="container">
    <!-- content header -->
    <div class="main-content-wrapper">
      <%@ include file="../member/member_header.jsp"%>  

      <!-- content main -->
      <div class="member-content-main-container">
        <!-- aside -->
        <%@ include file="../member/member_aside.jsp" %>

        <!-- article -->
        <div class="member-content-article-container">
          <div class="member-content-article-header kor">관심상품</div>
          <div class="contour"></div>
          <div class="member-content-article-items">
            <div class="member-content-article-item">
              <div class="member-content-article-item-img">
                <img src="https://developer.mozilla.org/static/img/favicon144.png" alt="Visit the MDN site" width=100 height=100>
              </div>
              <div class="member-content-article-item-brand"><a href="#" class="kor">쿠어</a></div>  
              <div class="member-content-article-item-product kor"><b>캐시미어 니트</b></div>
              <div class="member-content-article-item-price kor">89,000</div>
              <div class="member-content-article-item-heart kor"><i class="fas fa-heart"></i>344</div>
            </div>
            <div class="member-content-article-item">
              <div class="member-content-article-item-img">
                <img src="https://developer.mozilla.org/static/img/favicon144.png" alt="Visit the MDN site" width=100 height=100>
              </div>
              <div class="member-content-article-item-brand"><a href="#" class="kor">쿠어</a></div>
              <div class="member-content-article-item-product kor"><b>캐시미어 니트</b></div>
              <div class="member-content-article-item-price kor">89,000</div>
              <div class="member-content-article-item-heart kor"><i class="fas fa-heart"></i>344</div>
            </div>
            <div class="member-content-article-item">
              <div class="member-content-article-item-img">
                <img src="https://developer.mozilla.org/static/img/favicon144.png" alt="Visit the MDN site" width=100 height=100>
              </div>
              <div class="member-content-article-item-brand"><a href="#" class="kor">쿠어</a></div>
              <div class="member-content-article-item-product kor"><b>캐시미어 니트</b></div>
              <div class="member-content-article-item-price kor">89,000</div>
              <div class="member-content-article-item-heart kor"><i class="fas fa-heart"></i>344</div>
            </div>
            
            <div class="member-content-article-item">
              <div class="member-content-article-item-img">
                <img src="https://developer.mozilla.org/static/img/favicon144.png" alt="Visit the MDN site" width=100 height=100>
              </div>
              <div class="member-content-article-item-brand"><a href="#" class="kor">쿠어</a></div>
              <div class="member-content-article-item-product kor"><b>캐시미어 니트</b></div>
              <div class="member-content-article-item-price kor">89,000</div>
              <div class="member-content-article-item-heart kor"><i class="fas fa-heart"></i>344</div>
            </div>
            
            <div class="member-content-article-item">
              <div class="member-content-article-item-img">
                <img src="https://developer.mozilla.org/static/img/favicon144.png" alt="Visit the MDN site" width=100 height=100>
              </div>
              <div class="member-content-article-item-brand kor"><a href="#" class="kor">쿠어</a></div>
              <div class="member-content-article-item-product kor"><b>캐시미어 니트</b></div>
              <div class="member-content-article-item-price kor">89,000</div>
              <div class="member-content-article-item-heart kor"><i class="fas fa-heart"></i>344</div>
            </div>
            
            <div class="member-content-article-item">
              <div class="member-content-article-item-img">
                <img src="https://developer.mozilla.org/static/img/favicon144.png" alt="Visit the MDN site" width=100 height=100>
              </div>
              <div class="member-content-article-item-brand"><a href="#" class="kor">쿠어</a></div>
              <div class="member-content-article-item-product kor"><b>캐시미어 니트</b></div>
              <div class="member-content-article-item-price kor">89,000</div>
              <div class="member-content-article-item-heart kor"><i class="fas fa-heart"></i>344</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>  
   <%@ include file="../main/footer.jsp"%>  
</body>
</html>
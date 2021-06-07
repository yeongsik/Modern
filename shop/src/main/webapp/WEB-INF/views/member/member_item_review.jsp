<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<!-- css -->
	<link rel="stylesheet" href="css/member/member_item_review.css">
	<!-- js -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/member/member_item_review.js"></script>
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
          <div class="member-content-article-header kor">구매 후기</div>

          <div class="member-content-article-options kor">
            총 2건
            <select>
              <option class="kor">최신순</option>
              <option class="kor">1개월</option>
              <option class="kor">3개월</option>
              <option class="kor">6개월</option>
            </select>
          </div>

          <div class="member-content-article-items">
            <div class="member-content-article-items-header">
                <div class="member-content-article-items-header-product kor">상품 정보</div>
                <div class="member-content-article-items-header-subject kor">내용</div>
                <div class="member-content-article-items-header-date kor">날짜</div>
            </div>

            <div class="member-content-article-items-showcase">
              <!-- 상품후기 -->
              <div class="member-content-article-items-showcase-list" id="items1">
                <div class="member-content-article-items-product kor">커프스 스트라이프 셔츠</div>
                <div class="member-content-article-items-subject kor">배송이 좀 느리네요</div>
                <div class="member-content-article-items-date kor">2021.05.16</div>
              </div>
              <!-- 상품후기 상세 내용 -->
              <div class="member-content-article-items-detail">
                <div class="blank1"></div>
                <div class="member-content-article-items-detail-content kor">
                  일주일 만에 왔어요
                </div>
                <div class="blank2"></div>
              </div>
              
              <!-- 상품후기 -->
              <div class="member-content-article-items-showcase-list" id="items2">
                <div class="member-content-article-items-product kor">베이직 옥스퍼드 셔츠</div>
                <div class="member-content-article-items-subject kor">너무 좋아요~</div>
                <div class="member-content-article-items-date kor">2021.05.14</div>
              </div>
              
            </div>
          </div>
          </div>
        </div>
      </div>
  </section>  
   <%@ include file="../main/footer.jsp"%>  
</body>
</html>
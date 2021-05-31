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
  <link rel="stylesheet" href="css/member/member_point.css">
  <!-- js -->
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="js/member/member_point.js"></script>
  <!-- 구글 폰트 -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Raleway&display=swap">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap">
  <!-- fontawesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body>
  <%@ include file="../main/header.jsp"%>  
  <section class="member-content-wrapper">
    <!-- content header -->
    <div class="member-content-container">
      <%@ include file="../member/member_header.jsp"%>  

      <!-- content main -->
      <div class="member-content-main-container">
        <!-- aside -->
        <%@ include file="../member/member_aside.jsp" %>

        <!-- article -->
        <div class="member-content-article-container">
          <div class="member-content-article-header">
            <div class="member-content-article-hedaer-title">포인트</div>
            <div class="member-content-article-header-point">
              현재 포인트 
              <div class="member-content-article-header-point-sub">
                200점
              </div>
            </div>
            <div class="member-content-article-header-infomation">
              * 포인트 1점당 1원으로 전화하여 결제 시 사용할 수 있습니다. (단, 보유 적립금이 5,000원 이상일 때 사용 가능) <br>
            </div>
          </div>

          <div class="member-content-article-options">
            2장
            <select>
              <option>전체</option>
              <option>획득</option>
              <option>사용</option>
            </select>
          </div>
          <div class="member-content-article-items">
            <div class="member-content-article-items-header">
                <div class="member-content-article-items-header-point">포인트</div>
                <div class="member-content-article-items-header-type">적립 구분</div>
                <div class="member-content-article-items-header-date">적립 날짜</div>
            </div>

            <div class="member-content-article-items-showcase">
              <div class="member-content-article-items-showcase-list" id="items1">
                <div class="member-content-article-items-point">+100</div>
                <div class="member-content-article-items-type">로그인 포인트</div>
                <div class="member-content-article-items-date">2021.05.15</div>
              </div>

              <div class="member-content-article-items-showcase-list" id="items2">
                <div class="member-content-article-items-point">+100</div>
                <div class="member-content-article-items-type">로그인 포인트</div>
                <div class="member-content-article-items-date">2021.05.14</div>
              </div>

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
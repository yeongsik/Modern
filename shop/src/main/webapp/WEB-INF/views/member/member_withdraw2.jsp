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
  <link rel="stylesheet" href="css/member/member_withdraw2.css">
  <!-- js -->
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="js/member/member_withdraw2.js"></script>
  <!-- 구글 폰트 -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Raleway&display=swap">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap">
  <!-- fontawesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body>
  <%@ include file="../main/header.jsp"%>
  <form action="member_withdraw.shop" method="post">  
  <section class="container">
    <!-- content header -->
    <div class="main-content-wrapper">
      <%@ include file="../member/member_header.jsp"%>  

      <!-- content main -->
      <div class="member-content-main-container">
      <!-- aside -->
      <%@ include file="../member/member_aside.jsp"%>  
        
        <!-- article -->
        <div class="member-content-article-container">
          <input type="hidden" name="member_id">
          <div class="member-content-article-header">회원탈퇴</div>
          <div class="member-content-article-msg">${m.name}님 사용하실 수 있는 쿠폰과 포인트가 남아있습니다.</div>
          <div class="member-content-article-msg_box">
            <div class="member-content-article-msg_box-item1">Point: 3,300p</div>
            <div class="member-content-article-msg_box-item2">Coupon: 2개</div>
            <div class="member-content-article-msg_box-item3">다음 등급까지 남은 점수: 5,450점</div>
          </div>
          <div class="member-content-article-terms">
            <p class="member-content-article-terms-content">탈퇴 약관 설명</p>
          </div>
          <div class="member-content-article-terms-btn">
            <input type="checkbox" id="check">회원탈퇴에 동의합니다.
          </div>
          <div class="member-content-article-btn"><input type="submit" id="btn" value="확인"></div>
        </div>
      </div>
    </div>
    </div>
  </section>
  </form>  
   <%@ include file="../main/footer.jsp"%>  
</body>
</html>
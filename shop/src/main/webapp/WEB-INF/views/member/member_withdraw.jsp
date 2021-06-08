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
  <link rel="stylesheet" href="css/member/member_withdraw.css">
  <!-- 구글 폰트 -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap">
  <!-- fontawesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
  <script src="http://code.jquery.com/jquery-latest.js"></script>
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
        <%@ include file="../member/member_aside.jsp"%>  
          
          <!-- article -->
          <div class="member-content-article-container">
            <div class="member-content-article-header kor">회원탈퇴</div>
            <div class="member-content-article-inputarea">
              <div class="member-content-article-inputarea-comment kor">회원정보 확인을 위해 비밀번호를 입력해주세요.</div>
              <input type="password" class="member-content-article-inputarea-pw">

              <input type="button" class="member-content-article-inputarea-btn" onclick="location='member_withdraw_view.shop'" value="확인">

            </div>
          </div>
        </div>
      </div>
  </section>  
   <%@ include file="../main/footer.jsp"%>  
</body>
</html>
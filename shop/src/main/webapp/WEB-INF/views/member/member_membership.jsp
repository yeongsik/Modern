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
  <link rel="stylesheet" href="css/member/member_membership.css">
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
          <div class="member-content-article-header">회원 등급</div>
          
          <div class="member-content-article-status">
            <div class="member-content-article-status-accumulate">
              <div class="member-content-article-satus-info">누적 구매금액 / 10</div>
              <strong>2,572,497원</strong> <span> / 10</span>
            </div>
            <div class="member-content-article-status-sign">+</div>
            <div class="member-content-article-status-point">
              <div class="member-content-article-satus-info">현재 포인트</div>
              <strong>13,000점</strong>
            </div>
            <div class="member-content-article-status-sign">=</div>
            <div class="member-content-article-status-result_status">
              <div class="member-content-article-satus-info">현재 등급 점수</div>
              <strong>270,249점</strong>
            </div>
          </div>
          
          <div class="member-content-article-next-level">다음 등급인 <span>플래티넘</span>까지 <span>229,752</span>점 남았습니다.</div>

          <div class="member-content-article-manual">
            <ul>
              <li>회원 등급 점수는 누적 구매금액 / 10 + 포인트로 결정됩니다.</li>
              <li>누적 구매금액은 실시간 반영되지 않으며, 출고 처리 중 상태부터 매주 월요일 오전에 집계됩니다.</li>
              <li>회원 등급은 누적 구매금액이 집계된 이 후, 재로그인 시 갱신됩니다.</li>
              <li>회원 등급에 따라 무신사 등급 할인, 적립금 추가 지급, 매월 정기 쿠폰 발행 등의 혜택이 주어집니다.</li>
              <li>누적 구매 금액은 최근 5년 치가 반영됩니다.</li>
            </ul>
          </div>

          <div class="member-content-article-grade_table">
            <div class="member-content-article-grade_table-header">
              <div class="member-content-article-grade_table-header-tier">회원 등급</div>
              <div class="member-content-article-grade_table-header-tier_score">점수 안내</div>
              <div class="member-content-article-grade_table-header-benefit">등급별 혜택</div>
            </div>
            
            <div class="member-content-article-grade_table-manual">
              <div class="member-content-article-grade_table-tier">
                <div class="member-content-article-grade_table-tier-tier_name">LV.1 브론즈</div>
                <div class="member-content-article-grade_table-tier-tier_guide">회원가입 ~ 50,000점</div>
                <div class="member-content-article-grade_table-tier-tier_benefit">브론즈 등급 전용 쿠폰 1% 3장, 3000원 할인 쿠폰 1장</div>
              </div>
              <div class="member-content-article-grade_table-tier">
                <div class="member-content-article-grade_table-tier-tier_name">LV.2 실버</div>
                <div class="member-content-article-grade_table-tier-tier_guide">50,001 ~ 200,000점</div>
                <div class="member-content-article-grade_table-tier-tier_benefit">실버 등급 전용 쿠폰 2% 3장, 3000원 할인 쿠폰 2장, 5000원 할인 쿠폰 1장</div>
              </div>
              <div class="member-content-article-grade_table-tier">
                <div class="member-content-article-grade_table-tier-tier_name">LV.3 골드</div>
                <div class="member-content-article-grade_table-tier-tier_guide">200,001 ~ 500,000점</div>
                <div class="member-content-article-grade_table-tier-tier_benefit">골드 등급 전용 쿠폰 3% 3장, 5000원 할인 쿠폰 2장, 만원 할인 쿠폰 1장</div>
              </div>
              <div class="member-content-article-grade_table-tier">
                <div class="member-content-article-grade_table-tier-tier_name">LV.4 플래티넘</div>
                <div class="member-content-article-grade_table-tier-tier_guide">500,001 ~ 1,000,000점</div>
                <div class="member-content-article-grade_table-tier-tier_benefit">플래티넘 등급 전용 쿠폰 4% 3장, 만원 할인 쿠폰 2장, 삼만 원 할인 쿠폰 1장 </div>
              </div>
              <div class="member-content-article-grade_table-tier">
                <div class="member-content-article-grade_table-tier-tier_name"> LV.5 다이아몬드</div>
                <div class="member-content-article-grade_table-tier-tier_guide">1,000,001점 ~ </div>
                <div class="member-content-article-grade_table-tier-tier_benefit">다이아몬드 등급 전용 쿠폰 5% 3장, 만원 할인 쿠폰 3장, 삼만 원 할인 쿠폰 2장</div>
              </div>
            </div>
          </div>

          <div>

          </div>

        </div>
      </div>
    </div>
  </section>  
  <%@ include file="../main/footer.jsp"%>  
</body>
</html>
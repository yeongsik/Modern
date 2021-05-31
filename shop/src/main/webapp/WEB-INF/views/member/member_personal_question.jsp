<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- css -->
  <link rel="stylesheet" href="css/member/member_personal_question.css">
  <!-- js -->
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="js/member/member_personal_question.js"></script>
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
          <div class="member-content-article-header">1:1 문의</div>

          <div class="member-content-article-options">
            총 2건
            <select>
              <option>날짜순</option>
              <option>1개월</option>
              <option>3개월</option>
              <option>6개월</option>
            </select>
          </div>
          <div class="member-content-article-items">
            <div class="member-content-article-items-header">
                <div class="member-content-article-items-header-type">문의 유형</div>
                <div class="member-content-article-items-header-subject">내용</div>
                <div class="member-content-article-items-header-order_number">주문 정보</div>
                <div class="member-content-article-items-header-date">작성일</div>
                <div class="member-content-article-items-header-state">문의 상황</div>
            </div>

            <!-- 문의 -->
            <div class="member-content-article-items-showcase">
              <div class="member-content-article-items-showcase-list" id="items1">
                <div class="member-content-article-items-type">교환</div>
                <div class="member-content-article-items-subject">교환 문의</div>
                <div class="member-content-article-items-order_number">202105140002</div>
                <div class="member-content-article-items-date">2021.05.14</div>
                <div class="member-content-article-items-state">답변 대기</div>
              </div>

              <!-- 문의 상세 내용 -->
              <div class="member-content-article-items-detail1">
                <div class="blank1"></div>
                <div class="member-content-article-items-detail-content">
                  일주일 만에 왔어요
                </div>
                <div class="blank2"></div>
              </div>

              <!-- 문의 답변 -->
              <div class="member-content-article-answer_area-items1">
                <div class="member-content-article-answer-manager">교환처리 담당자</div>
                <div class="member-content-article-answer-content">
                  ※ 반드시 주문자 성함으로 입금 부탁드립니다. <br><br>
                  ※ 입금 내역은 입금하신 다음 날(영업일 기준) 확인되며, <br>
                  &emsp; 확인 후 최대한 빠른 처리를 위해 노력하겠습니다. <br><br>

                  다른 불편사항이나 도움이 필요하시다면 <br>
                  1:1 문의 또는 고객센터(15xx-xxxx)로 문의 부탁드립니다. 감사합니다.
                </div>
                <div class="member-content-article-answer-date">2021.05.14</div>
                <div class="member-content-article-answer-procedure">답변 완료</div>
              </div>

              <!-- 문의 -->
              <div class="member-content-article-items-showcase-list" id="items2">
                <div class="member-content-article-items-type">배송</div>
                <div class="member-content-article-items-subject">배송 문의</div>
                <div class="member-content-article-items-order_number">202105140001</div>
                <div class="member-content-article-items-date">2021.05.13</div>
                <div class="member-content-article-items-state">답변 완료</div>
              </div>

                <!-- 문의 상세 내용 -->
                <div class="member-content-article-items-detail2">
                  <div class="blank1"></div>
                  <div class="member-content-article-items-detail-content">
                    일주일 만에 왔어요
                  </div>
                  <div class="blank2"></div>
                </div>

              <!-- 문의 답변 -->
              <div class="member-content-article-answer_area-items2">
                <div class="member-content-article-answer-manager">교환처리 담당자</div>
                <div class="member-content-article-answer-content">
                  ※ 반드시 주문자 성함으로 입금 부탁드립니다. <br><br>
                  ※ 입금 내역은 입금하신 다음 날(영업일 기준) 확인되며, <br>
                  &emsp; 확인 후 최대한 빠른 처리를 위해 노력하겠습니다. <br><br>

                  다른 불편사항이나 도움이 필요하시다면 <br>
                  1:1 문의 또는 고객센터(15xx-xxxx)로 문의 부탁드립니다. 감사합니다.
                </div>
                <div class="member-content-article-answer-date">2021.05.14</div>
                <div class="member-content-article-answer-procedure">답변 완료</div>
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
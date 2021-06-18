<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- css -->
  <link rel="stylesheet" href="css/member/member_item_question.css">
  <!-- js -->
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="js/member/member_item_question.js"></script>
  <!-- 구글 폰트 -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
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
          <div class="member-content-article-header kor">상품 문의</div>

          <div class="member-content-article-options kor">
            <c:set var="cnt" value="${listCount}" />
            총 ${cnt} 건
            <select>
              <option class="kor">날짜순</option>
              <option class="kor">1개월</option>
              <option class="kor">3개월</option>
              <option class="kor">6개월</option>
            </select>
          </div>
          <div class="member-content-article-items">
            <div class="member-content-article-items-header">
                <div class="member-content-article-items-header-product kor">상품 정보</div>
                <div class="member-content-article-items-header-subject kor">문의 내용</div>
                <div class="member-content-article-items-header-type kor">문의 유형</div>
                <div class="member-content-article-items-header-date kor">작성일</div>
                <div class="member-content-article-items-header-state kor">처리 상태</div>
            </div>


			
            <div class="member-content-article-items-showcase">
              <!-- 상품 문의  -->
           	  <c:forEach var="q" items="${qList}" >
	            <div class="member-content-article-items-showcase">
	              <div class="member-content-article-items-showcase-list" id="items1" onclick="open(${q.question_id})">
	                <div class="member-content-article-items-product kor">${q.product_id}</div>
	                <div class="member-content-article-items-subject kor">${q.question_subject}</div>
	                <div class="member-content-article-items-type kor">${q.question_type}</div>
	                <div class="member-content-article-items-date kor">	                
		                <fmt:formatDate value="${q.question_date}" pattern="yyyy.MM.dd" />
	               	</div>
	                <div class="member-content-article-items-state kor">
	              		<c:if test="${q.question_state == 1}">답변 완료</c:if>
	              		<c:if test="${q.question_state == 0}">답변 대기</c:if>
		            </div>
	              </div>

              <!-- 문의 상세 내용 -->
	              <div class="member-content-article-items-detail1" id="question-content${q.question_id}">
	                <div class="blank1"></div>
	                <div class="member-content-article-items-detail-content kor">
	                ${q.question_content}
	                </div>
	                <div class="blank2"></div>
	              </div>
              <!-- 문의 답변 -->
	              <div class="member-content-article-answer_area-items1" id="question-answer${q.question_id}">
	                <div class="member-content-article-answer-manager kor">교환처리 담당자</div>
	                <div class="member-content-article-answer-content kor">
	                  ※ 반드시 주문자 성함으로 입금 부탁드립니다. <br><br>
	                  ※ 입금 내역은 입금하신 다음 날(영업일 기준) 확인되며, <br>
	                  &emsp; 확인 후 최대한 빠른 처리를 위해 노력하겠습니다. <br><br>
	
	                  다른 불편사항이나 도움이 필요하시다면 <br>
	                  1:1 문의 또는 고객센터(15xx-xxxx)로 문의 부탁드립니다. 감사합니다.
	                </div>
	                <div class="member-content-article-answer-date kor">2021.05.14</div>
	                <div class="member-content-article-answer-procedure kor">답변 완료</div>
	              </div>
	             </div>
              </c:forEach>
            </div>
          </div>
          </div>
        </div>
      </div>
  </section>  
   <%@ include file="../main/footer.jsp"%>  
</body>
</html>
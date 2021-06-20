<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
          <div class="member-content-article-header">
            <div class="member-content-article-hedaer-title kor">포인트</div>
            <div class="member-content-article-header-point kor">
              현재 포인트 
              <div class="member-content-article-header-point-sub kor">
                <!-- 200점 -->
                ${m.purchase_point}점
              </div>
            </div>
            <div class="member-content-article-header-infomation kor">
              * 포인트 1점당 1원으로 전화하여 결제 시 사용할 수 있습니다. (단, 보유 적립금이 5,000원 이상일 때 사용 가능) <br>
            </div>
          </div>

          <div class="member-content-article-options">
            총 ${count}건
            <select>
              <option class="kor">전체</option>
              <option class="kor">획득</option>
              <option class="kor">사용</option>
            </select>
          </div>
          <div class="member-content-article-items">
            <div class="member-content-article-items-header">
                <div class="member-content-article-items-header-point kor">포인트</div>
                <div class="member-content-article-items-header-type kor">적립 구분</div>
                <div class="member-content-article-items-header-date kor">적립 날짜</div>
            </div>
			
		  <!-- 포인트 적립 내역이 존재할 때 -->
		  <c:if test="${count != 0}">
		  	<c:set var="num" value="${listCount-(page-1)*5}"/>
            
            <div class="member-content-article-items-showcase">
            <c:forEach var="list" items="${list}">
              <div class="member-content-article-items-showcase-list" id="items<c:out value='${num}'/>">
              	<c:set var="num" value="${num+1}"/>
                <div class="member-content-article-items-point kor">+${list.acc_point}</div>
                <div class="member-content-article-items-type kor">${list.acc_type}</div>
                <div class="member-content-article-items-date kor">
                	<fmt:formatDate value="${list.acc_date}" pattern="yyyy-MM-dd"/> 
                </div>
              </div>
			</c:forEach>
            </div>
            
            <!-- 페이지 버튼 -->
			<div class="member-content-article-items-btn">
				<c:if test="${page <=1 }"><i class="fas fa-chevron-left">&ensp;</i></c:if>
				<c:if test="${page > 1 }"><a href="member_point.shop?page=${page-1}"><i class="fas fa-chevron-left"></i></a>&ensp;</c:if>
				
				<c:forEach var="m" begin="${startPage}" end="${endPage}">
					<c:if test="${m == page }">${m}&ensp;</c:if>
					<c:if test="${m != page and m < maxPage}">
						<a href="member_point.shop?page=${m}">${m}&ensp;</a>
					</c:if>
					<c:if test="${m != page and m == maxPage }">
						<a href="member_point.shop?page=${m}">${m}</a>
					</c:if>
				</c:forEach>
				
				<c:if test="${page >= maxPage }"><i class="fas fa-chevron-right"></i></c:if>
				<c:if test="${page < maxPage }">&ensp;<a href="member_point.shop?page=${page+1}"><i class="fas fa-chevron-right"></i></a></c:if>
			</div>
		  </c:if>
		
		  <!-- 포인트 적립 내역이 존재하지 않을 때 보이는 메시지 -->
		  <c:if test="${count==0}">
		  	<div class="member-content-article-items-fail_msg">
			  	포인트 적립 내역이 존재하지 않습니다.
		  	</div>
		  </c:if>
            
          </div>
          </div>
        </div>
      </div>
  </section>
   <%@ include file="../main/footer.jsp"%>    
</body>
</html>
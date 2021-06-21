<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


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
            총 ${listCount} 건
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
            <c:if test="${listCount != 0}">
	            <c:forEach var="r" items="${rList}" varStatus="st">
	            <c:set var="p" value="${pList}"/>
	              <!-- 상품후기 -->
	              <div class="member-content-article-items-showcase-list" id="items${r.review_id}">
	              <script type="text/javascript">
			              var count = 0;
			              $('#items'+${r.review_id}).click(function() {
			                count = count + 1;
			                if(count % 2 == 1) {
			               	  $('#content'+${r.review_id}).addClass('show');
			                } else {
			                  $('#content'+${r.review_id}).removeClass('show');
			                }
			              });
		              </script>
	                <div class="member-content-article-items-product kor">${p[st.index].product_name}</div>
	                <div class="member-content-article-items-subject kor">${r.review_subject}</div>
	                <div class="member-content-article-items-date kor">
	               		<fmt:formatDate value="${r.review_date}" pattern="yyyy.MM.dd" />
	               	</div>
	              </div>
	              <!-- 상품후기 상세 내용 -->
	              <div class="member-content-article-items-detail" id="content${r.review_id}">
	                <div class="blank1"></div>
	                <div class="member-content-article-items-detail-content kor">
		                <c:if test="${r.review_img != null}">
		                	<img src="${r.review_img}" alt="이미지" class="review-img"/>
		                </c:if>
		                ${fn:replace(r.review_content, cn, br) }
	                </div>
	                <div class="blank2"></div>
	              </div>
	             </c:forEach>
	             
	                <!-- 페이지 버튼 -->
					<div class="content-list-btn">
						<c:if test="${page <= 1}"><i class="fas fa-chevron-left"></i>&nbsp;</c:if>
						<c:if test="${page > 1}"><a href="member_board.shop?page=${page - 1}"><i class="fas fa-chevron-left"></i></a>&nbsp;</c:if>
						
						<c:forEach var="pg" begin="${startPage}" end="${endPage}">
							<c:if test="${pg == page}"><span style="font-weight: bold; font-size: large">${pg}&nbsp;</span></c:if>
							<c:if test="${pg != page}">
								<a href="member_board.shop?page=${pg}"><span style="font-weight: lighter;">${pg}&nbsp;</span></a>
							</c:if>
						</c:forEach>
						
						<c:if test="${page >= maxPage }"><i class="fas fa-chevron-right"></i></c:if>
						<c:if test="${page < maxPage }"><a href="member_board.shop?page=${page + 1}"><i class="fas fa-chevron-right"></i></a></c:if>
					</div>
				</c:if>
				<c:if test="${listCount==0}">
			  		<div class="empty-content kor">
				  		작성된 리뷰가 존재하지 않습니다.
			  		</div>
		 		</c:if>
             
            </div>
            
          </div>
          </div>
        </div>
      </div>
  </section>  
   <%@ include file="../main/footer.jsp"%>  
</body>
</html>
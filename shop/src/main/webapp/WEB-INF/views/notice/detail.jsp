<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- css -->
  <link rel="stylesheet" href="css/notice/notice_detail.css">
  <!-- js -->
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="js/notice/detail.js"></script>
  <!-- 구글 폰트 -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Raleway&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">
  <title>Document</title>
</head>
<body>
  <%@ include file="../main/header.jsp"%>
  <section class="notice-content-wrapper">
    <div class="notice-content-container">
      <div class="notice-content-header">
        <div class="notice-content-header-title"><strong>N O T I C E</strong></div>
      </div>

      <div class="notice-content-table-wrapper">
        <div class="notice-content-table">
          <div class="notice-content-table-title">
            <div class="th th-title"><span>제목</span></div>
            <div class="td-title"><span>${board.notice_subject}</span></div>
          </div>
  
          <div class="notice-content-table-writer">
            <div class="th th-writer"><span>작성자</span></div>
            <div class="td-writer"><span>${board.notice_writer}</span></div>
          </div>
  
          <div class="notice-content-table-etc">
            <div class="notice-content-table-date">
              <div class="th th-date"><span>작성일</span></div>
               
              <div class="td-date"><span><fmt:formatDate value="${board.notice_date}" pattern="yyyy-MM-dd"/></span></div>
            </div>
  
            <div class="notice-content-table-view">
              <div class="th th-view"><span>조회수</span></div>
              <div class="td-view"><span>${board.notice_view}</span></div>
            </div>
          </div>
  
          <div class="notice-content-table-content">
            <p>${noticeContent}</p>
          </div>
          
        </div>
      
	    <div class="notice-content-btn">
	    	<button id="list_btn">목록</button>
	    </div>
      </div>
      

    </div>
  </section>  
  <%@ include file="../main/footer.jsp"%>
</body>
</html>
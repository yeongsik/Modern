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
  <link rel="stylesheet" href="css/member/member_update2.css">
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
      <%@ include file="./member/member_header.jsp"%>  

      <!-- content main -->
      <div class="member-content-main-container">
        <!-- aside -->
         <%@ include file="./member/member_aside.jsp"%>  

        <!-- article -->
        <div class="member-content-article-container">
          <div class="member-content-article-header">
            <div class="member-content-article-header-member_update">회원정보 수정</div>
            <div class="member-content-article-header-address_management">배송지 관리</div>
          </div>
          <div class="member-content-aritcle-section-container">
            <div class="member-content-article-section-info_area-wrapper">
              <div class="member-content-article-section-info_area">
                <div class="member-content-article-section-info_area-id">
                  <div class="member-content-article-section-info_area-id-subtitle">아이디</div>
                  <input type="text" value="test_id" readonly>
                </div>
                <div class="member-content-article-section-info_area-pw">
                  <div class="member-content-article-section-info_area-id-subtitle">비밀번호</div>
                  <input type="password"> <br>
                  <button>비밀번호 변경</button> 
                </div>
                <div class="member-content-article-section-info_area-nickname">
                  <div class="member-content-article-section-info_area-id-subtitle">닉네임</div>
                  <input type="text" value="test_nickname"> <br>
                  <button>닉네임 변경</button> <br>
                </div>
                <div class="member-content-article-section-info_area-email">
                  <div class="member-content-article-section-info_area-id-subtitle">이메일</div>
                  <input type="email" value="test@naver.com"> <br>
                  <button>이메일 변경</button> <br>
                  <input type="checkbox"> 마케팅 수신 동의
                </div>
              </div>
            </div>
            
            <div class="member-content-article-section-address_area">
              <div class="member-content-article-section-address_area-basic">
                <div class="member-content-article-section-address_area-basic-title">기본 배송지</div>
                <div class="member-content-article-section-address_area-basic-content">서울특별시 마포구 푸르지오 401동 1301호</div>
                <div class="member-content-article-section-address_area-basic-btn"><button>기본 배송지 변경</button></div>
              </div>
              <div class="member-content-article-section-address_area-list">
                <div class="member-content-article-section-address_area-list-title">추가 배송지</div>
                <div class="member-content-article-section-address_area-list-function">
                  <button>추가</button>
                  <button>수정</button>
                  <button>삭제</button>
                </div>
                <div class="member-content-article-section-address_area-list-item">
                  <div class="member-content-article-section-address_area-list-item-chk"><input type="checkbox"></div>
                  <div class="member-content-article-section-address_area-list-item-address">서울특별시 마포구 푸르지오 401동 1301호</div>
                </div>
                <div class="member-content-article-section-address_area-list-item">
                  <div class="member-content-article-section-address_area-list-item-chk"><input type="checkbox"></div>
                  <div class="member-content-article-section-address_area-list-item-address">서울특별시 마포구 푸르지오 402동 1302호</div>
                </div>
                <div class="member-content-article-section-address_area-list-item">
                  <div class="member-content-article-section-address_area-list-item-chk"><input type="checkbox"></div>
                  <div class="member-content-article-section-address_area-list-item-address">서울특별시 마포구 푸르지오 403동 1303호</div>
                </div>
                <div class="member-content-article-section-address_area-list-item">
                  <div class="member-content-article-section-address_area-list-item-chk"><input type="checkbox"></div>
                  <div class="member-content-article-section-address_area-list-item-address">서울특별시 마포구 푸르지오 404동 1304호</div>
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
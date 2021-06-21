<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/member/member.js"></script>
<title>Modern</title>
<!-- css -->
<link rel="stylesheet" href="css/member/member_update2.css">
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap">
<!-- fontawesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body>
	<%@ include file="../main/header.jsp"%>
	<form action="member_update.shop" method="post">
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
						<div class="member-content-article-header">
							<div class="member-content-article-header-member_update kor">회원정보
								수정</div>
							<div class="member-content-article-header-address_management kor">배송지
								관리</div>
						</div>
						<div class="member-content-aritcle-section-container">
							<div class="member-content-article-section-info_area-wrapper">
								<div class="member-content-article-section-info_area">
									<div class="member-content-article-section-info_area-id">
										<div class="member-content-article-section-info_area-id-subtitle kor">아이디</div>
										<input type="text" value="${m.member_id}" name="member_id" readonly>
									</div>
									<button type="button" class="pw-button" id="pwbtn">비밀번호 변경</button>
									<div class="member-content-article-section-info_area-pw" id="pwdivs">
										<div class="member-content-article-section-info_area-id-subtitle kor">새로운 비밀번호</div>
										<input type="password" id="pwddiv" name="pw" value="">
										<br>
										<div class="result-divs kor" id="pwCheckResult1"></div>
										<div class="member-content-article-section-info_area-id-subtitle kor">새로운 비밀번호 확인</div>
										<input type="password" id="pwddiv2" value=""> <br>
										<div class="result-divs kor" id="pwCheckResult2"></div>
									</div>
									<div class="member-content-article-section-info_area-nickname">
										<div class="member-content-article-section-info_area-id-subtitle kor">휴대폰 번호</div>
										<input type="text" value="${m.phone}" name="phone"> <br>
									</div>
									<div class="member-content-article-section-info_area-email kor">
										<div class="member-content-article-section-info_area-id-subtitle kor">이메일</div>
										<input type="email" value="${m.email}" name="email"> <br>
										<input type="checkbox" id="accept_mail"
											name="accept_mail_value" value="${m.accept_mail}"
											<c:if test="${m.accept_mail == 1}">checked</c:if>> 마케팅 수신 동의 <br>
 										<button class="pw-button" type="submit" onclick="emailCheck()">회원정보 수정</button>
									</div>
								</div>
							</div>

							<div class="member-content-article-section-address_area">
								<div class="member-content-article-section-address_area-basic">
									<div class="member-content-article-section-address_area-basic-title kor">${add.address1} ${add.address2}</div>
									<div class="member-content-article-section-address_area-basic-content kor"></div>
									<div class="member-content-article-section-address_area-basic-btn kor"></div>
								</div>
								<div class="member-content-article-section-address_area-list">
									<div class="member-content-article-section-address_area-list-title kor">추가 배송지</div>
									<div class="member-content-article-section-address_area-list-function kor">
										<button type="button" class="kor" id="addButton" onclick="openDaumPostcode()">추가</button>
										<button type="button" class="kor" id="deleteButton">삭제</button>
									</div>

									<c:forEach var="add1" items="${addlist}">
										<c:if test="${add1.address_state == 0 }">
											<div class="member-content-article-section-address_area-list-item">
												<div class="member-content-article-section-address_area-list-item-chk" id="typeCh">
													<input type="checkbox" name="chkbox" value="${add1.add_pk}">${add1.address1} ${add1.address2 }
												</div>
											</div>
										</c:if>
									</c:forEach>
									<div class="member-content-article-section-info_area-id-subtitle kor" id="addDiv">
										<input type="text" class="member-content-article-section-address-post kor" id="update_post" name="postTmp" placeholder="우편번호"> <br> 
										<input type="text" class="member-content-article-section-address kor" id="update_add1" name="address1" placeholder="주소"> <br>
										<input type="text" class="member-content-article-section-address kor" id="update_add2" name="address2" placeholder="상세주소">
									<button type="button" class="pw-button-address-confirm" id="addressConfirm">추가 배송지 확인</button>
									</div>
								</div>
									<button type="button" class="pw-button-address-change" id="addressButton">기본 배송지 변경</button>
							</div>
						</div>
					</div>
				</div>
		</section>
	</form>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>
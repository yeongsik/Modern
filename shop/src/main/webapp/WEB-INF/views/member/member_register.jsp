<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/member/member_register.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/member/member.js"></script>

<title>회원가입</title>
</head>
<body>
	<%@ include file="../main/header.jsp"%>
	<div class="container">
		<section class="main-content-wrapper">
			<div class="main-section-container">
				<form method="POST" action="member_complete.shop" onsubmit="return pwCheck()">
					<input type="hidden" name="accept_mail_value" id="accept_mail_value" value="n">
					<div class="register-main-wrapper">
						<div class="register-main-text kor">회원가입</div> 
					</div>
					<article class="register-contents-wrapper">
						<div id="beforeSending">
							<div class="register-box-wrapper">
								<div class="register-input-contents">
									<ol class="register-id-box">
										<li class="register-id-title kor">아이디 
											<i class="fas fa-check" id="idCheckComplete"></i>
										</li>
										<li class="register-id-input-wrapper">
											<input type="text" class="register-id-input kor" id="joinId" name="member_id" maxlength="12" placeholder="아이디 입력"> 
											<input type="button" class="register-id-auth-input-button kor" value="중복 확인" onclick="id_check()">
											<div class="result-divs kor" id="idCheckResult"></div>
										</li>
									</ol>
									<ol class="register-pw-box">
										<li class="register-pw-title kor">비밀번호 
											<i class="fas fa-check" id="pw1CheckComplete"></i>
										</li>
										<li class="register-pw-input-wrapper">
											<input type="password" maxlength="12" class="register-pw-input kor" id="joinPw1" name="pw" placeholder="비밀번호 입력">
											<div class="result-divs kor" id="pwCheckResult1"></div>
										</li>
									</ol>
									<ol class="register-pw-confirm-box">
										<li class="register-pw-confirm-title kor">비밀번호 확인 
											<i class="fas fa-check" id="pw2CheckComplete"></i>
										</li>
										<li class="register-pw-input-wrapper">
											<input type="password" maxlength="12" class="register-pw-input kor" id="joinPw2" placeholder="비밀번호 입력">
											<div class="result-divs kor" id="pwCheckResult2"></div>
										</li>
									</ol>
									<ol class="register-phone-box">
										<li class="register-phone-title kor">휴대폰 번호 
											<i class="fas fa-check" id="phoneCheckComplete"></i>
										</li>
										<li class="register-phone-input-wrapper">
											<input type="text" maxlength="11" class="register-phone-input kor" id="phoneNum" name="phone" placeholder="휴대폰 번호 입력">
											<div class="result-divs kor" id="phoneCheckResult"></div>
										</li>
									</ol>
								</div>
							</div>
							<div class="register-verify-contents">
								<div class="register-verify-contents-wrapper">
									<div class="register-verify-contents-wrapper-box">
										<ol class="register-verify-box-check-list-start">
											<li class="register-verify-box-check-all">
												<input type="checkbox" class="register-verify-box-check-1 kor"
													id="checkAll"> 모두 동의 (선택 정보 포함)
												<div class="result-divs kor" id="checkboxResult"></div>
											</li>
											<li class="register-verify-box-check-list1">
												<input type="checkbox" class="register-verify-box-check-2 kor" 
													id="checkbox1"> 
													[필수]이용약관 동의 
												<a href="#" class="register-verify-box-check-a">보기</a>
											</li>
											<li class="register-verify-box-check-list2">
												<input type="checkbox" class="register-verify-box-check-3 kor" 
													id="checkbox2"> [필수]개인정보 처리방침 동의 
												<a href="#" class="register-verify-box-check-a">보기</a>
											</li>
											<li class="register-verify-box-check-list3">
												<input type="checkbox" class="register-verify-box-check-4 kor"
													id="accept_mail" name="accept_mail_value"> 
													[선택]광고성 정보 수신 및 마케팅 활용 동의 
												<a href="#" class="register-verify-box-check-a kor">보기</a>
											</li>
										</ol>
									</div>
									<div class="register-btn-wrapper">
										<input type="button" class="register-btn-wrapper-input-auth kor"
											value="다음" id="next" onclick="joinCheck1()">
									</div>
								</div>
							</div>
						</div>
						<div class="register-secondpage-box-wrapper" id="secondPageup">
							<div class="register-secondpage-input-contents">
								<ol class="register-name-box">
									<li class="register-name-title kor">이름 
										<i class="fas fa-check" id="nameCheckComplete"></i>
									</li>
									<li class="register-name-input-wrapper">
										<input type="text" class="register-name-input kor" id="name"
											name="name" maxlength="12" placeholder="이름을 입력해주세요.">
										<div class="result-divs kor" id="nameResult"></div>
									</li>
								</ol>
								<ol class="register-email-box">
									<li class="register-email-title kor">이메일 
										<i class="fas fa-check" id="emailCheckComplete"></i>
									</li>
									<li class="register-email-input-wrapper">
										<input type="text" class="register-email-input kor" id="email"
											name="email" placeholder="이메일을 입력해주세요">
										<div class="result-divs kor" id="emailCheckResult"></div>
									</li>
								</ol>
								<ol class="register-birth-box">
									<li class="register-birth-title kor">주민등록번호 
										<i class="fas fa-check" id="birthCheckComplete"></i>
									</li>
									<li class="register-birth-input-wrapper">
										<input type="text" class="register-birth-input" id="birth"
											name="birth" maxlength="6" placeholder="ex)021231"> -
										<input type="password" maxlength="1"
											class="register-birth-input-second" id="gender" name="gender">
											* * * * * *
										<div class="result-divs kor" id="birthResult"></div>
									</li>
								</ol>
							</div>
							<div class="register-btn-wrapper">
								<input type="submit" class="register-btn-wrapper-input-button kor"
									id="register_button" onclick="joinCheck1() " value="회원가입">
							</div>
						</div>
					</article>
				</form>
			</div>
		</section>
	</div>
	<%@ include file="../main/footer.jsp" %>
</body>
</html>

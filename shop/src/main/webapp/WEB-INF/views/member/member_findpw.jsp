<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<<<<<<< HEAD
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="./css/member/member_findpw.css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- <script src="./js/member_find.js"></script> -->
<title>비밀번호 찾기</title>
</head>  
<body> 
	<c:if test="${empty sendok}">
		<section class="main-section-wrapper">
			<div class="main-section-container">
				<form method="post" action="member_findpw_ok.shop"
					onsubmit="return check()">
					<div class="register-main-wrapper">
						<div class="register-main-text">비밀번호 찾기</div>
					</div>
					<article class="register-contents-wrapper">
						<div class="register-box-wrapper">
							<div class="register-input-contents">
								<ol class="register-phone-box">
									<li class="register-phone-title">아이디</li>
									<li class="register-phone-input-wrapper"><input
										class="register-phone-input-first" name="member_id"
										id="authId" placeholder="아이디를 입력해주세요.">
										<div class="result-divs" id="idInputCheck"></div></li>
									<li class="register-phone-title">이메일 주소</li>
									<li class="register-phone-input-wrapper"><input
										class="register-phone-input-first" name="email" id="email"
										placeholder="등록하신 이메일을 입력해주세요."> <input type="submit"
										class="register-phone-input-button" id="sendMail"
										value="인증번호 받기">
										<div class="result-divs" id="emailInputCheck"></div></li>
								</ol>
							</div>
						</div>
						<div class="register-btn-wrapper">
							<input type="button" class="register-btn-wrapper-input"
								onclick="self.close()" value="닫기">
						</div>
					</article>
				</form>
			</div>
		</section>
	</c:if>
</body>
</html>
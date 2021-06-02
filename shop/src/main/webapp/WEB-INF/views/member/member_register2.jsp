<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
		  rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/root.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/member/register2.css">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/member/member.js"></script> 
    <title>회원가입</title>
</head>
<body>
<% 
String member_id = (String)session.getAttribute("member_id");
String pw = (String)session.getAttribute("pw");
String phone = (String)session.getAttribute("phone");
int accept_mail = (Integer)session.getAttribute("accept_mail");
%>
<%@ include file="../main/header.jsp" %>
    <section class="main-section-wrapper">
        <div class="main-section-container">
            <form method="POST" action="member_complete.shop" onsubmit="return joinCheck2()">
            	<input type="hidden" id="member_id" name="member_id" value="<%=member_id%>"> 
				<input type="hidden" id="pw" name="pw" value="<%=pw%>"> 
				<input type="hidden" id="phone" name="phone" value="<%=phone%>"> 
				<input type="hidden" id="accept_mail" name="accept_mail" value="<%=accept_mail%>">
                <div class="register-main-wrapper"> 
                    <div class="register-main-text">
                        회원가입
                    </div>
                </div>
                <article class="register-contents-wrapper">
                    <div class="register-box-wrapper">
                        <div class="register-input-contents">
                            <ol class="register-nickname-box"> 
                                <li class="register-nickname-title">닉네임
                                    <i class="fas fa-check" id="nicknameCheckComplete"></i>
                                </li>
                                <li class="register-nickname-input-wrapper">
                                    <input type="text" class="register-nickname-input" id="nickname" name="nickname" maxlength="12"  placeholder="닉네임을 입력해주세요.">
                                    <input type="button" class="register-nickname-input-button"  value="중복 체크" onclick="nickname_check()">
                                	<div class="result-divs" id="nicknameResult"></div>
                                </li>
                            </ol>
                            <ol class="register-email-box">
                                <li class="register-email-title">이메일
                                    <i class="fas fa-check" id="emailCheckComplete"></i>
                                </li>
                                <li class="register-email-input-wrapper">
                                    <input type="text" class="register-email-input" id="email" name="email" placeholder="이메일을 입력해주세요">
                                	<div class="result-divs" id="emailCheckResult"></div>
                                </li>
                            </ol>
                            <ol class="register-birth-box">
                                <li class="register-birth-title">주민등록번호
                                    <i class="fas fa-check" id="birthCheckComplete"></i>
                                </li>
                                <li class="register-birth-input-wrapper">
                                    <input type="text" class="register-birth-input" id="birth" name="birth" maxlength="6" placeholder="ex)021231"> -
                                    <input type="password" maxlength="1" class="register-birth-input-second" id="gender" name="gender"> * * * * * *
                                	<div class="result-divs" id="birthResult"></div>
                                </li>
                            </ol>
                        </div>
                    </div>
                    <div class="register-btn-wrapper">
                        <input type="submit" class="register-btn-wrapper-input" onclick="joinCheck1()" value="회원가입">
                    </div>
                </article>        
            </form>
        </div>
    </section>
<!-- <%@ include file="../main/footer.jsp" %> -->
</body>
</html>
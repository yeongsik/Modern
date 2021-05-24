<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html lang="kr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/member/findpw.css" />
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
            rel="stylesheet">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="./find.js"></script>
        <title> 비밀번호 찾기 </title>
    </head>
    <body>
        <section class="main-section-wrapper">
            <div class="main-section-container">
                <form method="POST" action="#" onsubmit="return check()">
                    <div class="register-main-wrapper">
                        <div class="register-main-text">
                            비밀번호 찾기
                        </div>
                    </div>
                    <article class="register-contents-wrapper">
                        <div class="register-box-wrapper">
                            <div class="register-input-contents">
                                <ol class="register-phone-box">
                                    <li class="register-phone-title">
                                        이메일 주소
                                    </li>
                                    <li class="register-phone-input-wrapper">
                                        <input
                                            type="text"
                                            class="register-phone-input-first"
                                            id="email"
                                            placeholder="등록하신 이메일을 입력해주세요.">
                                        <input type="button" class="register-phone-input-button" value="인증메일 전송">
                                    </li>
                                    <div class="result-divs" id="emailInputCheck"></div>
                                    <li class="register-phone-input-wrapper">
                                        <input
                                            type="text"
                                            class="register-phone-input-second"
                                            id="authNum"
                                            placeholder="인증번호를 입력해주세요.">
                                    </li>
                                    <div class="result-divs" id="authNumInputCheck"></div>
                                </ol>
                            </div>
                        </div>
                        <div class="register-btn-wrapper">
                            <input type="submit" class="register-btn-wrapper-input" value="이메일 인증 확인">
                        </div>
                    </article>
                </form>
            </div>
        </section>
    </body>
</html>
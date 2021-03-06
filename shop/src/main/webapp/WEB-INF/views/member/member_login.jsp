<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/root.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/member/login.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/header.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/footer.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="<%=request.getContextPath()%>/js/main.js"></script>
    <script src="<%=request.getContextPath()%>/js/member/login.js"></script>
    
    <script>
    
    function member_findid(){
   	 window.open("member_findid.shop","아이디찾기","width=650,height=500");
    }
    
    function member_findpw(){
      	 window.open("member_findpw.shop","비밀번호찾기","width=650,height=500");
       }
    </script>
    <title>로그인</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="container">
    <section class="main-section-wrapper">
        <div class="main-section-container">
            <form method="POST"  action="main.shop" onsubmit="return loginCheck()">
                <div class="login-main-wrapper"> 
                    <div class="login-main-text">
                        로그인
                    </div>
                </div>
                <article class="login-contents-wrapper">
                    <div class="login-box-wrapper">
                        <div class="login-input-contents">
                            <ol class="login-id-box"> 
                                <li class="login-id-title"> 
                                    아이디
                                </li>
                                <li class="login-id-input-wrapper">
                                    <input type="text" class="login-id-input" id="loginId" maxlength="12" placeholder="아이디를 입력해주세요." >
                                </li>
                                <div class="result-divs" id="loginIdResult"></div>
                            </ol>
                            <ol class="login-pw-box">
                                <li class="login-pw-title">
                                    비밀번호
                                </li>
                                <li class="login-pw-input-wrapper">
                                    <input type="password" class="login-pw-input" id="loginPw" maxlength="12"  placeholder="비밀번호를 입력해주세요">
                                </li>
                                <div class="result-divs" id="longinPwResult"></div>
                            </ol>
                            <div class="login-btn-wrapper">
                                <input type="submit" class="login-btn-wrapper-input"  value="로그인">
                            </div>
                        </div>
                    </div>
                        <div class="login-find-contents"> 
                            <div class="login-find-contents-wrapper">
                                <div class="login-find-text"> 
                                    <a href="javascript:void(0)" onclick="member_findid()"  class="login-find-text-id" >아이디 찾기</a>
                                    <a href="javascript:void(0)" onclick="member_findpw()"  class="login-find-text-pw" >비밀번호 찾기</a>
                                    <a href="javascript:void(0)" onclick="location='member_register1.shop'"  class="login-find-text-member" >회원가입</a>
                                </div>
                            </div>
                        </div>
                    <div class="login-signup-wrapper"> 
                        <div class="login-external-contents"> 
                            <a href="#" class="login-external-contents-gg" >
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="login-external-contents-fb" >
                                <i class="fab fa-facebook"></i>
                            </a>
                            <a href="#" class="login-external-contents-gh" >
                                <i class="fab fa-github"></i>
                            </a>
                        </div>
                    </div>
				</article>
            </form>
        </div>
    </section>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
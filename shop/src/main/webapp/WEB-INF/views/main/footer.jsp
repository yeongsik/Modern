<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	 <footer>
        <div class="footer-container">
            <div class="footer-site">
                <div class="footer-site-subject eng">
                    Modern
                </div>
                <div class="footer-site-sns">
                    <a class="sns" href=""><i class="fab fa-facebook-square"></i></a>
                    <a class="sns" href=""><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="footer-notice-wrapper">
                <div class="footer-notice-subject kor">
                    <a class="footer-notice-subject kor" href="notice.shop">Notice</a>
                </div>

				<c:forEach var="f" items="${footerList}">
					<div class="footer-notice-content-wrapper">
						<a class="notice-content" href="notice_detail.shop?notice_id=${f.notice_id}&page=${page}">${f.notice_subject}</a>
						<span class="notice-content">
							<fmt:formatDate value="${f.notice_date}" pattern="yyyy-MM-dd"/>
						</span>
					</div>
				</c:forEach>
            </div>
            <div class="footer-info">
                <div class="footer-info-number kor footer-info-content">
                    고객센터 070-1234-5678
                </div>
                <div class="footer-info-address kor footer-info-content">
                    Address | 서울특별시 마포구 신촌로 176
                </div>
                <div class="footer-info-business_license kor footer-info-content">
                    Business License | 123-4956-239
                </div>
                <div class="footer-info-owner kor footer-info-content">
                    Owner | 홍길동 고길동
                </div>
                <div class="footer-info-acceptance kor footer-info-content">
                    <a class="footer-info-content" href="personalinfo.shop">개인정보처리방침</a>
                </div>
                <div class="footer-info-userule kor footer-info-content">
                    <a class="footer-info-content" href="userule.shop">이용약관</a>
                </div>
            </div>
        </div>
    </footer>
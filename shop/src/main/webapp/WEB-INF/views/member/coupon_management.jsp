<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>쿠폰 관리</title>
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="./css/main.css">
	<!-- 구글 폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Raleway&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
	<!-- js -->
	<script src="https://code.jquery.com/jquery-latest.js"></script>
</head>
<body>

	<section class="container">
		<form method="post" action="" onsubmit="">
			<div class="coupon-create-wrapper">
				<div>쿠폰 발급</div>
				<div>쿠폰명</div>
				<div>할인방식
					<select>
						<option value="rate">할인율</option>
						<option value="price">할인금액</option>
					</select>
					<input type="text" value="할인율/금액 입력">
				</div>
				<div>쿠폰 만기일
					<select>
						<option value="14">14일</option>
						<option value="30">30일</option>
						<option value="365">1년</option>
					</select>
				</div>
				<div class="coupon-create-submit">
					<input type="submit" value="발급">
				</div>
			</div>
		</form>
	</section>

</body>
</html>
$(function(){
	$('select[name=purpose]').change(function(){
		
		if ($(this).val()=="9900000"){
			$("#coupon-name").val("");
			$("#coupon-discount").val("");
			$("#coupon-expiration").val("");
		}else if ($(this).val()=="1100000"){
			$("#coupon-name").val("회원가입 축하 쿠폰");
			$("#coupon-discount").val("10");
			$("#coupon-expiration").val("30");
		}else if ($(this).val()=="2200000"){
			$("#coupon-name").val("생일쿠폰");
			$("#coupon-discount").val("15");
			$("#coupon-expiration").val("14");
		}else if ($(this).val()=="3300000"){
			$("#coupon-name").val("월간쿠폰(Bronze)");
			$("#coupon-discount").val("3");
			$("#coupon-expiration").val("30");
		}else if ($(this).val()=="4400000"){
			$("#coupon-name").val("월간쿠폰(Silver)");
			$("#coupon-discount").val("5");
			$("#coupon-expiration").val("30");
		}else if ($(this).val()=="5500000"){
			$("#coupon-name").val("월간쿠폰(Gold)");
			$("#coupon-discount").val("10");
			$("#coupon-expiration").val("30");
		}else if ($(this).val()=="6600000"){
			$("#coupon-name").val("월간쿠폰(Platinum)");
			$("#coupon-discount").val("15");
			$("#coupon-expiration").val("30");
		}
		
		if ($(this).val()!="9900000"){
			document.getElementById('coupon-name').readOnly = true;
			document.getElementById('coupon-discount').readOnly = true;
			document.getElementById('coupon-expiration').readOnly = true;
		}
			
	});
});
/* 우편번호 검색 */
function openDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postZone').value = data.zonecode;
            document.getElementById("address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("detailAddress").focus();
        }
    }).open();
};
function openDaumPostcodeNew() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postZone2').value = data.zonecode;
            document.getElementById("address2").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("detailAddress2").focus();
        }
    }).open();
};


$(document).ready(function(){
	/* 우측 상품/금액정보 스크롤 */
	$(window).on("scroll", function(){
	    var elements = $('.sticky');
	    Stickyfill.add(elements);
	});

	/* 기존배송지 클릭 */
	$("#tab1").click(function(){
		$(".addressInf1").css({
			display: 'block'
		});
		$(".addressInf2").css({
			display: 'none'
		});
		$("#tab1").removeClass('tab22');
		$("#tab1").addClass('tab11');
		$("#tab2").removeClass('tab11');
		$("#tab2").addClass('tab22');
	});
	/* 신규배송지 클릭 */
	$("#tab2").click(function(){
		$(".addressInf2").css({
			display: 'block'
		});
		$(".addressInf1").css({
			display: 'none'
		});
		$("#tab2").removeClass('tab22');
		$("#tab2").addClass('tab11');
		$("#tab1").removeClass('tab11');
		$("#tab1").addClass('tab22');
	});
	
	/* 배송메모 직접입력 */
	$("#memoSelect").change(function(){
		if($(this).val() == "6"){
			$("#memoGroup").css("border-radius", "2px 2px 0 0");
			$("#inputHidden").css("display","block");
		}
		else {
			$("#memoGroup").css("border-radius", "2px");
			$("#inputHidden").css("display","none");
		}
	});
	$("#memoSelect2").change(function(){
		if($(this).val() == "6"){
			$("#memoGroup2").css("border-radius", "2px 2px 0 0");
			$("#inputHidden2").css("display","block");
		}
		else {
			$("#memoGroup2").css("border-radius", "2px");
			$("#inputHidden2").css("display","none");
		}
	});
	
	/* 결제방법 */
	$('input[name="payment"]').change(function(){
		/* 카드 */
		if($(this).val() == "card"){
			$(".card").css("background","var(--color-black)")
							.css("color","var(--color-white)");
		} else {
			$(".card").css("background","transparent")
							.css("color","var(--color-black)");
		};
		/* 실시간계좌이체 */
		if($(this).val() == "trans"){
			$(".trans").css("background","var(--color-black)")
						.css("color","var(--color-white)");
		} else {
			$(".trans").css("background","transparent")
						.css("color","var(--color-black)");
		};
		/* 가상계좌 */
		if($(this).val() == "vbank"){
			$(".vbank").css("background","var(--color-black)")
							.css("color","var(--color-white)");
		} else {
			$(".vbank").css("background","transparent")
							.css("color","var(--color-black)");			
		};
		/* 카카오페이 */
		if($(this).val() == "kakaopay"){
			$(".kakaopay").css("background","var(--color-black)")
							.css("color","var(--color-white)");
		} else {
			$(".kakaopay").css("background","transparent")
							.css("color","var(--color-black)");
		};
		/* 휴대폰결제 */
		if($(this).val() == "phone"){
			$(".phone").css("background","var(--color-black)")
							.css("color","var(--color-white)");
		} else {
			$(".phone").css("background","transparent")
							.css("color","var(--color-black)");
		};
		/* 네이버페이 */
		if($(this).val() == "naverpay"){
			$(".naverpay").css("background","var(--color-black)")
							.css("color","var(--color-white)");
		} else {
			$(".naverpay").css("background","transparent")
							.css("color","var(--color-black)");
		};
		/* 삼성페이 */
		if($(this).val() == "samsung"){
			$(".samsung").css("background","var(--color-black)")
							.css("color","var(--color-white)");
		} else {
			$(".samsung").css("background","transparent")
							.css("color","var(--color-black)");
		};
		/* 페이코 */
		if($(this).val() == "payco"){
			$(".payco").css("background","var(--color-black)")
							.css("color","var(--color-white)");
		} else {
			$(".payco").css("background","transparent")
							.css("color","var(--color-black)");
		};
	});
});

function orderSelectCoupon(order_detail_pk) {
	alert(order_detail_pk);
	alert(typeof order_detail_pk);
	window.open("orderSelectCoupon.shop?order_detail_pk="+order_detail_pk ,"쿠폰리스트" , "width=620px , height=400px");
}
function couponSelectOne(coupon_id,order_detail_pk) {
	alert(coupon_id);
	alert(order_detail_pk);
	$.ajax({
		url:"couponAction.shop",
		type:"post",
		data: {"coupon_id" : coupon_id ,
			   "order_detail_pk" : order_detail_pk},
		success:function(data) {
			$(opener.document).find("#"+order_detail_pk).html(data);
		},
		error:function(){
			alert("오류오류")
		}
	})
	close();
	
}
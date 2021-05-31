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
/*	$(window).on("scroll", function(){
	    var elements = $('.sticky');
	    Stickyfill.add(elements);
	})*/

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
	
	/* 결제방법 선택 $('input[name="payment"]:checked').val() 
	if($('input[name="payment"]:checked').val() == "creditCard"){
	*/
});
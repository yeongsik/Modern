//회원가입 1p

function joinCheck1() {


	if ($.trim($("#joinId").val()) == "") {
		$("#idCheckResult").text("아이디를 입력해주세요.");
		$("#idCheckResult").css("color", "red");
		$("#joinId").focus();
		return false;
	}
	if ($.trim($("#joinPw1").val()) == "") {
		$("#pwCheckResult1").text("비밀번호를 입력해주세요.");
		$("#pwCheckResult1").css("color", "red");
		$("#joinPw1").focus();
		return false;
	}
	if ($.trim($("#joinPw2").val()) == "") {
		$("#pwCheckResult2").text("비밀번호 확인을 입력해주세요.");
		$("#pwCheckResult2").css("color", "red");
		$("#joinPw2").focus();
		return false;
	}
	if ($.trim($("#phoneNum").val()) == "") {
		$("#phoneCheckResult").text("휴대폰 번호를 입력해주세요.");
		$("#phoneCheckResult").css("color", "red");
		$("#phoneNum").focus();
		return false;
	}
	if ($("#checkbox1").is(":checked") && $("#checkbox2").is(":checked")) {
		$("#beforeSending").hide();
		$("#afterSending").show();
		$("#phoneAuth").focus();
	} else if (!$("#checkbox1").is(":checked")) {
		$("#checkboxResult").text("이용약관에 동의해주세요.");
		$("#checkboxResult").css("color", "red");
		$("#checkbox1").focus();
		return false;
	} else if (!$("#checkbox2").is(":checked")) {
		$("#checkboxResult").text("개인정보 처리방침에 동의해주세요.");
		$("#checkboxResult").css("color", "red");
		$("#checkbox2").focus();
		return false;
	}


	//2페이지 유효성 검사
	var emailTest = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
	var genterTest = /^[1-4]{1}$/;

	if ($.trim($("#nickname").val()) == "") {
		$("#nicknameResult").css("color", "red");
		$("#nickname").focus();
		return false;
	}
	if ($.trim($("#email").val()) == "") {
		$("#emailCheckResult").text("이메일을 입력해 주세요.");
		$("#emailCheckResult").css("color", "red");
		$("#email").focus();
		return false;
	}
	if (!emailTest.test($("#email").val())) {
		$("#emailCheckResult").text("유효한 이메일을 입력해 주세요.");
		$("#emailCheckResult").css("color", "red");
		$("#email").focus();
		return false;
	}
	if ($.trim($("#birth").val()) == "") {
		$("#birthResult").text("주민번호 앞자리를 입력해주세요");
		$("#birthResult").css("color", "red");
		$("#birth").focus();
		return false;
	}
	if ($("#birth").val().length != 6) {
		$("#birthResult").text("주민번호 앞자리를 올바르게 입력해 주세요");
		$("#birthResult").css("color", "red");
		$("#birth").focus();
		return false;
	}
	if ($.trim($("#gender").val()) == "") {
		$("#birthResult").text("주민번호 뒷자리 를 입력해 주세요");
		$("#birthResult").css("color", "red");
		$("#gender").focus();
		return false;
	}
	if (!genterTest.test($("#gender").val())) {
		$("#birthResult").text("주민번호 뒷자리를 올바르게 입력해 주세요");
		$("#birthResult").css("color", "red");
		$("#gender").focus();
		return false;
	}
}


//아이디 중복확인 초기형
function id_check() {
	var memid = $("#joinId").val();

	$.ajax({
		type: "POST",
		url: "member_idcheck.shop",
		data: { "memid": memid },        //키 벨류값
		success: function(data) {
			if (data == 1) {	//중복 ID
				var newtext = '<font color="red">중복 아이디입니다.</font>';
				$("#idCheckResult").text('');
				$("#idCheckResult").show();
				$("#idCheckResult").append(newtext);
				$("#joinId").val('').focus();
				return false;

			} else if ($.trim($("#joinId").val()) == "") {
				$("#idCheckResult").text("아이디를 입력해주세요.");
				$("#idCheckResult").css("color", "red");
				$("#joinId").focus()
			} else {	//사용 가능한 ID
				var newtext = '<font color="blue">사용가능한 아이디입니다.</font>';
				$("#idCheckResult").text('');
				$("#idCheckResult").show();
				$("#idCheckResult").append(newtext);
				$("#joinPw1").focus();
			}
		}
	});//$.ajax
}
$(function() {
	$("#idCheckComplete").hide();
	$("#pw1CheckComplete").hide();
	$("#pw2CheckComplete").hide();
	$("#phoneCheckComplete").hide();

	//인증번호입력란 숨기기
	$("#afterSending").hide();

	//모두 동의 선택시 3개 체크박스 전체 선택
	$("#checkAll").click(function() {
		if ($("#checkAll").prop("checked")) {
			$("input[type=checkbox]").prop("checked", true);
		} else {
			$("input[type=checkbox]").prop("checked", false);
		}
	});
	// id 정규식 검사 4~12자 영어소문자 + 숫자만 V 표시가 show될 경우 text메시지와 같이 나올것인가 text는 생략할것인가
	$("#joinId").keyup(function() {
		var inputId = $("#joinId").val();
		var idTest = /^[a-z0-9_-]{4,12}$/;
		if (idTest.test(inputId)) {
			$("#idCheckResult").empty();
			$("#idCheckComplete").show();
		} else if ((inputId.length < 4) && (inputId.length > 0)) {
			$("#idCheckComplete").hide();
			$("#idCheckResult").text("4~12자 사이로 입력해주세요");
			$("#idCheckResult").css("color", "red");
		} else if (inputId.length > 0) {
			$("#idCheckComplete").hide();
			$("#idCheckResult").text("영어 소문자와 숫자만 가능합니다.");
			$("#idCheckResult").css("color", "red");
		} else {
			$("#idCheckResult").empty();
		}
	});
	// 비밀번호 정규식 8~16자 영어대소문자,숫자,특수문자 하나 이상
	$("#joinPw1").keyup(function() {
		var inputPw = $("#joinPw1").val();
		var pwTest = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}$/;
		if (pwTest.test(inputPw)) {
			$("#pwCheckResult1").empty();
			$("#pw1CheckComplete").show();
		} else if ((inputPw.length < 8) && (inputPw.length > 0)) {
			$("#pw1CheckComplete").hide();
			$("#pwCheckResult1").text("8~16자 사이로 입력해주세요");
			$("#pwCheckResult1").css("color", "red");
			$("#joinPw1").focus();
			return false;
		} else if (inputPw.length > 0) {
			$("#pw1CheckComplete").hide();
			$("#pwCheckResult1").text("대소문자+숫자+특수문자로 가능");
			$("#pwCheckResult1").css("color", "red")
			$("#joinPw1").focus();
			return false;
		} else {
			$("#pwCheckResult1").empty();
		}
	});
	// 비밀번호 일치여부 div노출
	$("#joinPw2").keyup(function() {
		var inputPw = $("#joinPw1").val();
		var pwTest = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}$/;
		if (($("#joinPw2").val()) == "") {
			$("#pwCheckResult2").empty();
		} else if (!pwTest.test(inputPw)) {
			$("#pw2CheckComplete").hide();
			$("#pwCheckResult2").text("올바른 비밀번호를 입력해주세요.");
			$("#pwCheckResult2").css("color", "red");
			return false;
		} else if ($.trim($("#joinPw1").val()) != $.trim($("#joinPw2").val())) {
			$("#pw2CheckComplete").hide();
			$("#pwCheckResult2").text("비밀번호가 일치하지 않습니다.");
			$("#pwCheckResult2").css("color", "red");
			$("#joinPw2").focus();
			return false;
		} else if ($("#joinPw2").val().length > 0) {
			$("#pwCheckResult2").empty();
			$("#pw2CheckComplete").show();
			//완료표시 show
		}
	});
	//휴대폰번호 자릿수
	$("#phoneNum").keyup(function() {
		var inputPhone = $("#phoneNum").val();
		var phoneTest = /^01(?:0|1|[6-9])([0-9]{3,4})([0-9]{4})$/;
		if (phoneTest.test(inputPhone)) {
			$("#phoneCheckComplete").show();
			$("#phoneCheckResult").empty();
			//완료표시 show
		} else if (inputPhone.length > 0) {
			$("#phoneCheckComplete").hide();
			$("#phoneCheckResult").text("올바른 휴대폰 번호를 입력해주세요");
			$("#phoneCheckResult").css("color", "red");
			$("#phoneCheckResult").focus();
			return false;
		} else {
			$("#phoneCheckResult").empty();
		}
	});
});

//2페이지 소환
$(function() {
	$("#nicknameCheckComplete").hide();
	$("#emailCheckComplete").hide();
	$("#birthCheckComplete").hide();
	$("#secondPageup").hide();

	$("#next").click(function() {
		if ($("#joinId").val() == "" || $("#joinPw1").val() == "" || $("#joinPw2").val() == "" || $("#phoneNum").val() == "" || ($("#accept_mail").is("checked", "true"))) {
			$("#secondPageup").hide();
		} else if ($("#checkbox1").is(":checked") && $("#checkbox2").is(":checked")) {
			$("#secondPageup").show();
		} else if (($("#accept_mail").is(":checked") == true)) {
			$("#secondPageup").hide();
		} else {
			$("#secondPageup").hide()
			$("#afterSending").hide();
		}
	});

	// 닉네임 중복확인 검사 추가 필요
	$("#nickname").keyup(function() {
		if ($("#nickname").val() == "") {
			$("#nicknameCheckComplete").hide();
			$("#nicknameResult").css("color", "red");
			$("#nickname").focus();
			return false;
		} else if ($("#nickname").val().length > 0) {
			$("#nicknameResult").empty();
			$("#nicknameCheckComplete").show();
		}
	});
	// 이메일 정규식 검사
	$("#email").keyup(function() {
		var inputEmail = $("#email").val();
		var emailTest = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
		if (emailTest.test(inputEmail)) {
			$("#emailCheckResult").empty();
			$("#emailCheckComplete").show();
		} else {
			$("#emailCheckComplete").hide();
			$("#emailCheckResult").text("유효한 이메일을 입력해 주세요.");
			$("#emailCheckResult").css("color", "red");
			return false;
		}
	});
	$("#birth").keyup(function() {
		var birthValue = $("#birth").val();
		var birthTest = /^[0-9]{6}$/;
		if (!birthTest.test(birthValue)) {
			$("#birthCheckComplete").hide();
			$("#birthResult").text("주민번호 앞자리를 올바르게 입력해 주세요");
			$("#birthResult").css("color", "red");
			$("#birth").focus();
			return false;
		} else {
			$("#birthResult").empty();
		}
	});
	$("#gender").keyup(function() {
		var genderValue = $("#gender").val();
		var genterTest = /^[1-4]{1}$/;
		if (genterTest.test(genderValue)) {
			$("#birthResult").empty();
			$("#birthCheckComplete").show();
		} else {
			$("#birthCheckComplete").hide();
			$("#birthResult").text("주민번호 뒷자리 올바르게 입력해주세요");
			$("#birthResult").css("color", "red");
			$("#gender").focus();
			return false;
		}
	});
});

//회원정보 수정페이지 비밀번호버튼 동작
$(function() {
	$("#pwdivs").hide();
	$("#pwbtn").click(function() {
		$("#pwdivs").show();
		$("#pwbtn").hide();
	});

	if ($("#pwddivs").val() == "") {
		$("#pwddivs").replacewith('<input id="hidepw" name="pw">');
	}

});
//수정페이지 들어가기전 비번 체크
function pwCheck() {

	var userpwd = $("#userpw").val();
	var pwd = $("#hiddenPw").val();

	if (userpwd.length == 0) {
		alert("비밀번호를 입력해주세요");
		$("#userpwd").focus();

	} else if (userpwd != pwd) {
		alert("틀린 비밀번호입니다");
		$("#userpwd").focus();
	}

}
//탈퇴페이지 들어가기전 비번 체크
function pwCheck1() {

	var userpwd = $("#userpw").val();
	var pwd = $("#hiddenPw").val();

	if (userpwd.length == 0) {
		alert("비밀번호를 입력해주세요");
		$("#userpw").focus();

	} else if (userpwd != pwd) {
		alert("틀린 비밀번호입니다");
		$("#userpw").focus();
	}

}
$(function() {
	// 비밀번호 정규식 8~16자 영어대소문자,숫자,특수문자 하나 이상
	$("#pwddiv").keyup(function() {
		var inputPw = $("#pwddiv").val();
		var pwTest = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}$/;
		if (pwTest.test(inputPw)) {
			$("#pwCheckResult1").empty();
		} else if ((inputPw.length < 8) && (inputPw.length > 0)) {
			$("#pwCheckResult1").text("8~16자 사이로 입력해주세요");
			$("#pwCheckResult1").css("color", "red");
			$("#pwddiv").focus();
			return false;
		} else if (inputPw.length > 0) {
			$("#pwCheckResult1").text("대소문자+숫자+특수문자로 가능합니다.");
			$("#pwCheckResult1").css("color", "red")
			$("#pwddiv").focus();
			return false;
		} else {
			$("#pwCheckResult1").empty();
		}
	});
	// 비밀번호 일치여부 div노출
	$("#pwddiv2").keyup(function() {
		var inputPw = $("#pwddiv").val();
		var pwTest = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}$/;
		if (($("#pwddiv2").val()) == "") {
			$("#pwCheckResult2").empty();
		} else if (!pwTest.test(inputPw)) {
			$("#pwCheckResult2").text("올바른 비밀번호를 입력해주세요.");
			$("#pwCheckResult2").css("color", "red");
			return false;
		} else if ($.trim($("#pwddiv").val()) != $.trim($("#pwddiv2").val())) {
			$("#pwCheckResult2").text("비밀번호가 일치하지 않습니다.");
			$("#pwCheckResult2").css("color", "red");
			$("#pwddiv2").focus();
			return false;
		} else if ($("#pwddiv2").val().length > 0) {
			$("#pwCheckResult2").empty();
			//완료표시 show
		}
	});

});

//기본 배송지 변경버튼 눌렀을 시 추가배송지 checkbox의 주소로 변경
$(function() {
	$("#addressButton").click(function() {
		var checkboxValues = [];
		var member_id = $("input[name='member_id']").val();

		$("input[name='chkbox']:checked").each(function(i) {
			checkboxValues.push($(this).val());
		});

		var datas = { "member_id": member_id, "checkArray": checkboxValues };

		$.ajax({
			url: "member_update_address.shop",
			type: 'post',
			data: datas,

			success: function(data) {
				alert("배송지가 변경되었습니다.");
				location.href = "member_update_view.shop";
			},

			error: function() {
				
			}
		});


	});
	//0619 추가 배송지 확인 버튼 클릭시 주소 추가
	$("#addressConfirm").click(function() {
		var member_id = $("input[name='member_id']").val(); 
		var post = 	$("#update_post").val();
		var address1 = 	$("#update_add1").val();
		var address2 = 	$("#update_add2").val();

		var datas = { "member_id": member_id, "post" : post,
		"address1" : address1, "address2":address2 };

		
			$.ajax({
				url: "member_update_address_add.shop",
				type: 'post',
				data: datas,

				success: function(data) {
		
					location.href = "member_update_view.shop";
				},

				error: function() {
					alert("배송지를 추가해주세요.");
				}
			});

	});
	
});
//회원정보 배송지 추가 버튼 눌렀을 때 숨은 div 활성화
$(function() {
	$("#addDiv").hide();
	$("#addButton").click(function() {
		$("#addDiv").show();
	});

});
//배송지 삭제 버튼 클릭
$(function() {
	$("#deleteButton").click(function() {
		var checkboxValues = [];
		var member_id = $("input[name='member_id']").val();

		$("input[name='chkbox']:checked").each(function(i) {
			checkboxValues.push($(this).val());
		});

		var datas = { "member_id": member_id, "checkArray": checkboxValues };

		$.ajax({
			url: "member_update_address_del.shop",
			type: 'post',
			data: datas,

			success: function(data) {
				alert("배송지가 삭제되었습니다.");
				location.href = "member_update_view.shop";
			},

			error: function() {
				alert("error");
			}
		});


		/*
		if ($("input[name='chkbox']").is(":checked") == true) {
			alert("삭제되었습니다.");
		} else {
			alert("삭제할 배송지를 선택해주세요.");
		}
		*/
	});

});

function emailCheck() {
	//마케팅 수신동의
	$("#accept_mail").click(function() {
		if ($("#accept_mail").is(":checked")) {
			$("#accept_mail").val('1');

		} else {
			$("#accept_mail").val('0');
		}

	});
}
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
			document.getElementById('update_post').value = data.zonecode;
			document.getElementById("update_add1").value = addr;
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("update_add2").focus();
		}
	}).open();
};
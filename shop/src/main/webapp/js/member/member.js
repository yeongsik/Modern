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
	//선택적 수신동의
	if ($("#accept_mail").is(":checked")) {
		$("#accept_mail_value").val('y');
	} else {
		$("#accept_mail_value").val('n');
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
			if (data.cnt > 0) {	//중복 ID
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

//닉네임 중복확인
function nickname_check() {
	var memnickname = $("#nickname").val();

	$.ajax({
		type: "POST",
		url: "member_nickcheck.shop",
		data: { "memnickname": memnickname },        //키 벨류값
		success: function(data) {
			if (data == 1) {	//중복 ID
				var newtext = '<font color="red">중복 닉네임입니다.</font>';
				$("#nicknameResult").text('');
				$("#nicknameResult").show();
				$("#nicknameResult").append(newtext);
				$("#nickname").val('').focus();
				return false;

			} else {	//사용 가능한 ID
				var newtext = '<font color="blue">사용가능한 닉네임입니다.</font>';
				$("#nicknameResult").text('');
				$("#nicknameResult").show();
				$("#nicknameResult").append(newtext);
				$("#email").focus();
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
			$("#pwCheckResult1").text("대소문자+숫자+특수문자로 가능합니다.");
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
		} else if (($("#accept_mail").is(":checked")==true)) {
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
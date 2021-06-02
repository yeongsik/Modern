function check() {
    // db와 비교해서 추가 작성 필요
    if ($.trim($("#authId").val()) == "") {
        $("#idInputCheck").text("아이디를 입력하세요.");
        $("#idInputCheck").css("color", "red");
        $("#authId").focus();
        return false;
    }
	if ($.trim($("#email").val()) == "") {
        $("#emailInputCheck").text("이메일을 입력하세요.");
        $("#emailInputCheck").css("color", "red");
        $("#email").focus();
        return false;
    }
    if ($.trim($("#authNum").val()) == "") {
        $("#authNumInputCheck").text("인증번호를 입력하세요.");
        $("#authNumInputCheck").css("color", "red");
        $("#authNum").focus();
        return false;
    }
}

$(function () {
	
	$("#authId").keyup(function () {
        if ($("#authId").val() == "") {
            $("#idInputCheck").empty();
        } else {
            $("#idInputCheck").empty();
        }
    });
	
    $("#email").keyup(function () {
        var inputEmail = $("#email").val();
        var emailTest = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
        if (emailTest.test(inputEmail)) {
            $("#emailInputCheck").empty();
        } else {
            $("#emailInputCheck").text("유효한 이메일을 입력해 주세요.");
            $("#emailInputCheck").css("color", "red");
            return false;
        }

    });
    $("#authNum").keyup(function () {
        if ($("#authNum").val() == "") {
            $("#authNumInputCheck").empty();
        } else {
            $("#authNumInputCheck").empty();
        }
    });

});
$("#sendMail").click(function() {// 메일 입력 유효성 검사
		var mail = $("#mail").val(); //사용자의 이메일 입력값. 
			
			mail = mail+"@"+$("#domain").val(); //셀렉트 박스에 @뒤 값들을 더함.
			$.ajax({
				type : 'post',
				url : '/checkMail',
				data : {
					mail:mail
					},
				dataType :'json',

			});
			alert("인증번호가 전송되었습니다.") 
			isCertification=true; //추후 인증 여부를 알기위한 값
		
	});
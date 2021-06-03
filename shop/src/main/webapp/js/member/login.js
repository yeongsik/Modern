function loginCheck() {
// db와 비교해서 로그인 형식 만들 필요
    if ($.trim($("#loginId").val()) == "") {
        $("#longinIdResult").text("아이디를 입력하세요.");
        $("#longinIdResult").css("color", "red");
        $("#loginId").focus();
        return false;
    }
    if ($.trim($("#loginPw").val()) == "") {
        $("#longinPwResult").text("비밀번호를 입력하세요.");
        $("#longinPwResult").css("color", "red");
        $("#loginPw").focus();
        return false;
    }
}
$(function(){
    $("#loginId").keyup(function () { 
        if($("#loginId").val()== ""){
            $("#longinIdResult").text("아이디를 입력하세요2.");
            $("#longinIdResult").css("color", "red");
            return false;
        }else{
            $("#longinIdResult").empty();
        }
    });
    $("#loginPw").keyup(function () { 
        if($("#loginPw").val()== ""){
            $("#longinPwResult").text("비밀번호를 입력하세요.");
            $("#longinPwResult").css("color", "red");
            return false;
        }else{
            $("#longinPwResult").empty();
        }
    });

});
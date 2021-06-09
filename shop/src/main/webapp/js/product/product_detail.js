$(document).ready(function() {
    $(".product-description-tab-link").click(function(){
        var tab_id =$(this).attr("data-tab");
        $(".product-description-tab-link").removeClass("current");
        $(".tab-content").removeClass("current");
        $(this).addClass("current");
        $("#"+tab_id).addClass("current");
    })
})


// 관심상품 등록
   function enroll() {
	let member_id = m_id;
	if(member_id != "") {
		// 관심상품을 등록시키고 
	   	alert("관심상품으로 등록되었습니다.");
	   	let goLikePage = confirm("관심상품 목록으로 이동하시겠습니까?");
		// 찬성하면 관심상품페이지
	   	if(goLikePage == true) {
			let product_id = p_id;
	   		location.href="product_likey_confirm_agree.shop?product_id="+product_id+"&member_id="+member_id
	   	} else {
		// 취소하면 상품세부 페이지로 재전송
	   		let product_id = p_id;
	   		location.href="product_likey_confirm_cancel.shop?product_id="+product_id+"&member_id="+member_id
	   	}
	} else {
		alert("로그인이 필요합니다.")
		let goLoginPage = confirm("로그인 페이지로 이동하시겠습니까?");
		if(goLoginPage == true) {
			location.href="login.shop"
		} else {
			location.href="product_likey_confirm_cancel.shop?product_id="+product_id				
		}
	}
} 

// 관심상품 등록 해제
	function cancel() {
		let member_id = m_id;
		let product_id = p_id;
		alert("관심상품 등록이 해제되었습니다.");
		location.href="product_likey_cancel.shop?product_id="+product_id+"&member_id="+member_id
	}
	

// 오더 디테일 테이블에 등록
function handleOnChange() {
	// 선택된 데이터 가져오기
	const value = e.value;
	if(e.value !="default") {
	} 
		
	document.getElementById('result').innerText
	= value;
}
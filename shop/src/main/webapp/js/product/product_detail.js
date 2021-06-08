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
   	alert("관심상품으로 등록되었습니다.");
   	let result = confirm("관심상품 목록으로 이동하시겠습니까?");
   	if(result == true) {
   		var product_id = p_id;
		alert(product_id);
   		location.href="product_likey.shop?product_id="+product_id
   	} else {
   		var product_id = p_id;
		alert(product_id);
   		location.href="product_likey.shop?product_id="+product_id
   	}
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
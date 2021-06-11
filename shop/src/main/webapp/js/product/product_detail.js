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
	var choose_size = $("#product_select option:selected").val();
	if(choose_size != "default" && !$("#product_select option:selected").hasClass("productActive")) {
		$("#product_select option:selected").addClass("productActive");
		const url = new URL(window.location.href);
			const urlParams = url.searchParams;
			var product_id = parseInt(urlParams.get('product_id'));
			
			$.ajax({
				url: "orderdetailadd.shop",
				type: "post",
				data : {"product_id" : product_id ,
						"choose_size" : choose_size},
				success:function(data) {
					$("#product-count").append(data);
				},
				error:function(){
					alert("오류오류")
				}
			})
	}
}

// 오더 디테일 삭제
function removeOrderDetail(e,choose_size) {
	alert(e);
	alert(typeof e);
	alert(typeof choose_size);
	$("#"+e).remove();
	alert("product_size"+choose_size);
	$("#product_size_option"+choose_size).removeClass("productActive");
	
	
	$.ajax({
		url:"removeOrderDetail.shop",
		type:"post",
		data : {"order_detail_pk" : e },
		success:function() {
		},
	})
}
function minusPurchaseNumber(purchase_number ,order_detail_pk) {
	alert(order_detail_pk);
	alert(typeof order_detail_pk);
	alert(purchase_number);
	alert(typeof purchase_number);
	if(purchase_number >1) {
		purchase_number = purchase_number -1;
		$.ajax({
			url:"updatePurchaseNumber.shop",
			type:"post",
			data : {"purchase_number" : purchase_number ,
					"order_detail_pk" : order_detail_pk},
			success:function(data){
				$("#order_purchase_content"+order_detail_pk).html(data);
			}
		})
	}
}
function plusPurchaseNumber(purchase_number ,order_detail_pk) {
	alert(order_detail_pk);
	alert(typeof order_detail_pk);
	alert(purchase_number);
	alert(typeof purchase_number);
	purchase_number = purchase_number +1;
	$.ajax({
		url:"updatePurchaseNumber.shop",
		type:"post",
		data : {"purchase_number" : purchase_number ,
				"order_detail_pk" : order_detail_pk},
		success:function(data){
				$("#order_purchase_content"+order_detail_pk).html(data);
		}
	})
	alert(purchase_number);
	alert(typeof purchase_number);
}
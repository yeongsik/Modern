$(document).ready(function(){
	$("button").click(function(){
		close();
	});	
});

function couponSelectOne(coupon_id,order_detail_pk) {
	alert(coupon_id);
	alert(order_detail_pk);
	alert($(opener.document).find("#postZone").val());
	$.ajax({
		url:"couponAction.shop",
		type:"post",
		async: false,
		data: {"coupon_id" : coupon_id ,
			   "order_detail_pk" : order_detail_pk},
		success:function(data) {
			alert("success");
			$(opener.document).find("#"+order_detail_pk).html(data);
			$(opener.document).find("#totalProductPrice").load(location.href + "#totalProductPrice");
		},
		error:function(request, status, error){
		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	})
	close();
};

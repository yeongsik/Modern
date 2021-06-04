$(document).ready(function() {
	$(".product-list-detail-wrapper").on("mouseover", function() {
        $(this).find("img").css("-webkit-filter" , "opacity(.4) drop-shadow(0 0 0 var(--color-white))")
        $(this).find("img").css("filter" , "opacity(.4) drop-shadow(0 0 0 var(--color-white));")
        $(this).find(".product-detail-content").css("display" ,"inherit")
    })
    $(".product-list-detail-wrapper").on("mouseleave", function() {
        $(this).find("img").css("-webkit-filter" , "");
        $(this).find("img").css("filter" , "");
        $(this).find(".product-detail-content").css("display" ,"none")
    })
})
$(document).ready(function() {
    $(".product-description-tab-link").click(function(){
        var tab_id =$(this).attr("data-tab");
        $(".product-description-tab-link").removeClass("current");
        $(".tab-content").removeClass("current");
        $(this).addClass("current");
        $("#"+tab_id).addClass("current");
    })
})
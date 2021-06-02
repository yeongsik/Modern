$(document).ready(function() {

    var asideCheck = 0; 
    $("#aside-list").hide();
    $(".header-category-detail-nav-name").hide();
    if(asideCheck == 0) {
        $("#aside-btn").on("click" , function () {
            
            if (asideCheck ==0) {
                $("#aside-btn").css("left","15%" );
                asideCheck =1;
                $("#aside-list").show();
				$(".product-list-content-container").attr("justify-content" ,"space-between");
            } 
            else if (asideCheck ==1) {
                $("#aside-btn").css("left","0%" );
                asideCheck = 0;
                $("#aside-list").hide();
				$(".product-list-content-container").attr("justify-content" ,"space-evenly");	
            }
            
         //   return false;
        });
    };

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
	// 무한 스크롤
	$(window).scroll(function(){
		var scrollHeight = $(document).height();
		var scrollPosition =$(window).height()+$(window).scrollTop();
		
		if(scrollPosition > scrollHeight){
			alert("무한스크롤");
			
			$("#product_list_section").append('<div id="test">wefwefwe</div>');
		}
	})
})
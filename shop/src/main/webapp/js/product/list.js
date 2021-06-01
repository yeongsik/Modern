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
            
            return false;
        });
    };
})
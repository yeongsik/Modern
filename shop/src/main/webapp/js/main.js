$(document).ready(function() {
	
	
	// 상품 리스트 js 
	
    /*var asideCheck = 0; 
    $("#aside-list").hide();
    $(".header-category-detail-nav-name").hide();
    if(asideCheck == 0) {
        $("#aside-btn").on("click" , function () {
            
            if (asideCheck ==0) {
                $("#aside-btn").css("left","15%" );
                asideCheck =1;
                $("#aside-list").show();
            } 
            else if (asideCheck ==1) {
                $("#aside-btn").css("left","0%" );
                asideCheck = 0;
                $("#aside-list").hide();
            }
            
            return false;
        })
    }*/
    // var shopNavCheck = 0;
    // if (shopNavCheck == 0) {
        // } 
        // if (shopNavCheck == 1) {
            //     $(".header-category-detail-nav-name").show();
            // }
    
    // 헤더 js
    /*$(".header-category-detail-nav-name").hide();
    $("#shop").on("mouseover" ,function(){
        $(".header-category-detail-nav-name").show();
        return false;
    })
    $("#header_nav").on("mouseleave" , function(){
        $(".header-category-detail-nav-name").hide();
        return false;
    })*/
    
    // $("#shop").on("mouseleave" ,function(){
    //     $(".header-category-detail-nav-name").hide();
    // })

	
    $("#main-view-btn").on("mouseover" , function(){
        $(this).css("background-color" , "var(--color-black)");
        $(".main-content-view-text").css("color","var(--color-white)");
        return false;
    })
    $("#main-view-btn").on("mouseleave" , function(){
        $(this).css("background-color" , "");
        $(".main-content-view-text").css("color","var(--color-black)");
        return false;
    })
})

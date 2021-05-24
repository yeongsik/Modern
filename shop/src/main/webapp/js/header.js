/**
 * 
 */
$(document).ready(function() {
 $(".header-category-detail-nav-name").hide();
    $("#shop").on("mouseover" ,function(){
        $(".header-category-detail-nav-name").show();
        return false;
    })
    $("#header_nav").on("mouseleave" , function(){
        $(".header-category-detail-nav-name").hide();
        return false;
    })
}) 
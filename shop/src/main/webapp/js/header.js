/**
 * 
 */
$(document).ready(function() {
	$(".header-category-detail-nav-name").hide();
	$("#shop").on("mouseover", function() {
		$(".header-category-detail-nav-name").show();
		return false;
	})
	$("#header_nav").on("mouseleave", function() {
		$(".header-category-detail-nav-name").hide();
		return false;
	})
	
	$(".header-login-dropdown").hide();
	$(".header-member").on("mouseover", function(){
		$(".header-login-dropdown").show();
		return false;
	});
	$(".header-member").on("mouseleave", function(){
	$(".header-login-dropdown").hide();
		return false;
	});
	
	$(".header-login-dropdown").on("mouseover", function(){
	$(".header-login-dropdown").show();
		return false;
	});
	$(".header-login-dropdown").on("mouseleave", function(){
	$(".header-login-dropdown").hide();
		return false;
	});
});

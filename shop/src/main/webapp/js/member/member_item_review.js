$(function() {

	// variable
	let count = 0;

	// background-color change
	$('.member-content-article-items-showcase-list').mouseover(function() {
		$(this).css("background-color", "rgb(247,247,247");
	});
	$('.member-content-article-items-showcase-list').mouseout(function() {
		$(this).css("background-color", "transparent");
	});


	// click action
	$('.member-content-article-items-showcase-list').click(function() {
		count = count + 1;

		if (count % 2 == 1) {
			$('.member-content-article-items-detail').addClass("show");
		} else {
			$('.member-content-article-items-detail').removeClass("show");
		}
	});
});

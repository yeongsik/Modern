$(function() {

	// variable
	let count = 0;

	// default
	$('.member-content-article-items-detail').hide();

	// background-color change
	$('#items1').mouseover(function() {
		$(this).css("background-color", "rgb(247,247,247");
	});
	$('#items1').mouseout(function() {
		$(this).css("background-color", "#ffffff");
	});

	$('#items2').mouseover(function() {
		$(this).css("background-color", "rgb(247,247,247");
	});
	$('#items2').mouseout(function() {
		$(this).css("background-color", "#ffffff");
	});

	// click action
	$('#items1').click(function() {
		count = count + 1;

		if (count % 2 == 1) {
			$('.member-content-article-items-detail').show();
		} else {
			$('.member-content-article-items-detail').hide();
		}
	});
});

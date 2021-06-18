$(function() {
  
  // variable
  let count = 0;
  let idx = 0;
  
  // default
/*  $('.member-content-article-items-detail1').hide();
  $('.member-content-article-answer_area-items1').hide();
*/
  // background-color change
  $('.member-content-article-items-showcase-list').mouseover(function(){
    $(this).css("background-color","rgb(247,247,247");
  });
  $('.member-content-article-items-showcase-list').mouseout(function() {
    $(this).css("background-color","transparent");
  });



  // click action



  $('#items'+idx).click(function() {
    count = count + 1;
    if(count % 2 == 1) {
   	  $('#content'+idx).addClass('show');
      $('#answer'+idx).addClass('show');
    } else {
      $('#content'+idx).removeClass('show');
      $('#answer'+idx).removeClass('show');
/*		idx = idx + 1;*/
    }
  });

});

/*function open(question_id) {

	alert(typeof question_id);

	count = count + 1;
	
	if(count % 2 == 1) {
		$('#question-content' + question_id).show();
		$('#question-answer' + question_id).show();
	} else {
		$('#question-content' + question_id).hide();
		$('#question-answer' + question_id).hide();
	};
};*/

$(function() {
  
  // variable
  let count = 0;
  var size = $('#size').val();
  var idx = 0;

	for(var i=0; i<=size; i++){
		idx + i;
	  $('#items'+idx).click(function() {
	    count = count + 1;
	
	    if(count % 2 == 1) {
	      $('#detail'+idx).css("display", "flex");
	      $('#answer'+idx).css("display", "flex");
	    } else {
	      $('#detail'+idx).css("display", "none");
	      $('#answer'+idx).css("display", "none");
	    }
	  });
	}

  // background-color change
  $('.member-content-article-items-showcase-list').mouseover(function(){
    $(this).css("background-color","rgb(247,247,247");
  });
  $('.member-content-article-items-showcase-list').mouseout(function() {
    $(this).css("background-color","transparent");
  });

  // click action
/*  $('#items'+question_id).click(function() {
    count = count + 1;

    if(count % 2 == 1) {
      $('#detail'+question_id).css("display", "flex");
      $('#answer'+question_id).css("display", "flex");
    } else {
      $('#detail'+question_id).css("display", "none");
      $('#answer'+question_id).css("display", "none");
    }
  });*/


  
});

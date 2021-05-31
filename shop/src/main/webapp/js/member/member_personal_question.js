$(function() {
  
  // variable
  let count = 0;
  
  // default
  $('.member-content-article-items-detail1').hide();
  $('.member-content-article-items-detail2').hide();
  $('.member-content-article-answer_area-items1').hide();
  $('.member-content-article-answer_area-items2').hide();

  // background-color change
  $('#items1').mouseover(function(){
    $(this).css("background-color","rgb(247,247,247");
  });
  $('#items1').mouseout(function() {
    $(this).css("background-color","#ffffff");
  });

  $('#items2').mouseover(function(){
    $(this).css("background-color","rgb(247,247,247");
  });
  $('#items2').mouseout(function() {
    $(this).css("background-color","#ffffff");
  });

  // cursor change
  $('.member-content-article-items-option2').hover(function() {
    $(this).css("cursor","pointer");
  });

  // click action
  $('#items1').click(function() {
    count = count + 1;

    if(count % 2 == 1) {
      $('.member-content-article-items-detail1').show();
      $('.member-content-article-answer_area-items1').show();
    } else {
      $('.member-content-article-items-detail1').hide();
      $('.member-content-article-answer_area-items1').hide();
    }
    
    
  });
  
  $('#items2').click(function() {
    count = count + 1;
    
    if(count % 2 == 1) {
      $('.member-content-article-items-detail2').show();
      $('.member-content-article-answer_area-items2').show();
    } else {
      $('.member-content-article-items-detail2').hide();
      $('.member-content-article-answer_area-items2').hide();
    }
  });
});

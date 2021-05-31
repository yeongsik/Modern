$(function() {
  var check = 0;
  $('#check').click(function() {
    check++;
    if(check % 2 == 1) {
      $('#btn').css("background-color","#2d2d2d");
      $('#btn').hover(function(){
        $('#btn').css("cursor","pointer");
      });
    } else {
      $('#btn').css("background-color","#818181");
      $('#btn').hover(function(){
        $('#btn').css("cursor","default");
      });
    }
  });
});
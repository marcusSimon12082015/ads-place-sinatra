$(document).ready(function(){
  $(".close").click(function(){
    $(".flash").fadeOut(1500,function(){
      $(this).remove();
    });
  });
});

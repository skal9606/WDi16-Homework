//AJAX FOR COMMENTS/REVIEWS ON EACH HOUSE'S PAGE

//STEP 2
var retrieveComment = function(){
  var commentInTransit = $("#comment_content").val();
  var $newComment = $("<li>");
  $newComment.text(commentInTransit);
  $(".new-comment-display").append($newComment);

};

//STEP 1
  //Event handler
$(document).on("turbolinks:load",function(){
  $(".new-comment-submission").on("ajax:success", function(event, data, status, hxr){
    retrieveComment();
  });
});

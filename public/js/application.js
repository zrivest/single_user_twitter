$(document).ready(function() {
  $('#tweet_form').on('submit', function(event){
    event.preventDefault();
    var data = $("#tweet_form").serialize();
    console.log(data);
    $.post('/tweet', data, function(){
      $.get("/_all_good", function(response){
        $('#tweet_form').append(response);
      });
    });
  });
});

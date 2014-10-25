$(function(){

  $( ".add_to_s" ).on('ajax:success', function() {
    swal(
      "Gra dodana"
      );
  });

  
  $( ".add_to_s" ).on('ajax:error', function(e, xhr) {
    errors = JSON.parse(xhr.responseText);
    swal({ title: errors.join("\n"), type: "error"  
    });
  });

  $(".btn-default").click(function(){
    $(this).addClass("disabled");
  });
});
$(function(){
  console.log("bla b;a");
$( ".add_to_s" ).on('ajax:success', function() {
  swal(
    "Gra dodana"
    );
  console.log("ok");
        });

console.log($( ".add_to_s" ))
$( ".add_to_s" ).on('ajax:error', function(xhr, status, error) {
  console.log(status.responseJSON);
  swal({ title: "Masz już tę grę", type: "error"    
    
        });
  });

$(".btn-default").click(function(){
  $(this).addClass("disabled");
});
        });
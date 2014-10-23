$(function(){
$(document).ajaxSuccess(function(){ 
        swal("Dodałeś grę");
        });
$(".btn-default").click(function(){
  $(this).addClass("disabled");
})
        });
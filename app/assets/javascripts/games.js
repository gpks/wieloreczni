$(function(){
$(document).ajaxSuccess(function(){ 
        alert("Dodałeś grę");
        });
$(".btn-default").click(function(){
  $(this).addClass("disabled");
})
        });
$(document).ready(function() {
   $(".resume").click(function() {
       if ($("#resume_yes").is(':checked') == true ){
           $(".attach").show()
           $(".paste").hide()
       }

       else{
           $(".attach").hide()
           $(".paste").show()
       }
   });
});
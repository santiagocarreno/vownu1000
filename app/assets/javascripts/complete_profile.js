/**
 * Created by jd on 3/17/15.
 */
$(function(){

    $(".edit_user").submit(function(e){
        var a = "";

        $('.check_para_fundaciones :checked').each(function() { //loop through each checkbox
            a = $(this).next().val() +";"+ a ;  //select all checkboxes with class "checkbox1"
        });

        $("#hiddenf").val(a);


        console.log("$a >> "+ a);
    });

});
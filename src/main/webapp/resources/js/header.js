$(document).ready(function(){
    $(".sub_menu").hide();
    $(".sidebar_content li").click(function(){
        $("ul",this).slideToggle("fast");
    });
});
$(".dropmenu ol li").hover(function () {
    $(this).find("ul").stop().fadeToggle(300);
});

$(".txt input, .txtboxID input, .txtboxTEL1 input").on("focus",function(){
    $(this).addClass("focus");
});

$(".txt input, .txtboxID input, .txtboxTEL1 input").on("blur",function(){
    if($(this).val() == "")
        $(this).removeClass("focus");
});

function signUp(event) {
    event.preventDefault();
    document.querySelector('#popup').checked = true;
}
